//
//  ContentModel.swift
//  MyLearning
//
//  Created on 08/05/2024.
//

import Foundation

class ContentModel: ObservableObject {
    
    //list of modules
    @Published var modules = [Module]()
    
    //current module
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    //current lesson
    @Published var currentLesson: Lesson?
    var currentLessonIndex = 0
    
    @Published var currentQuestion: Question?
    var currentQuestionIndex = 0
    
    //current lesson explanation
    @Published var codeText = NSAttributedString()
    var styleData: Data?
    
    //current selected content and test
    @Published var currentContentSelected: Int?
    @Published var currentTestSelected: Int?
    
    
    init() {
        
        getLocalData()
        
        getRemoteData()
    }
    
    //MARK: - Data methods
    
    func getLocalData() {
        
        //get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            //read the file
            let jsonData = try Data(contentsOf: jsonUrl!)
            //try to decode
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            //assign parsed
            self.modules = modules
        }
        catch {
            print("Couldn't parse local data")
        }
        
        //parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            
            //read the file
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
        }
        catch {
            print("Couldn't parse style data")
        }
    }
    
    func getRemoteData() {
        
        let urlString = "https://codewithchris.github.io/learningapp-data/data2.json"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            
            return
        }
        
        let request = URLRequest(url: url!)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
            
            guard error == nil else {
                
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                
                let modules = try decoder.decode([Module].self, from: data!)
                
                self.modules += modules
            }
            catch {
                
                //Couldn't parse json
            }
        }
        
        dataTask.resume()
        
    }
    
    //MARK: - Module navigation methods
    
    func beginModule(_ moduleId: Int) {
        
        //find the index for this module id
        for index in 0..<modules.count {
            
            if modules[index].id == moduleId {
                currentModuleIndex = index
                break
            }
        }
        
        //set the current module
        currentModule = modules[currentModuleIndex]
    }
    
    func beginLesson(_ lessonIndex: Int) {
        
        //Check that the lesson index is within range of module lessons
        if lessonIndex < currentModule!.content.lessons.count {
            
            currentLessonIndex = lessonIndex
        }
        else {
            
            currentLessonIndex = 0
        }
        
        //set the current module
        currentLesson = currentModule!.content.lessons[currentLessonIndex]
        codeText = addStyling(currentLesson!.explanation)
    }
    
    func nextLesson() {
        
        //advance the lesson index
        currentLessonIndex = currentLessonIndex + 1
        
        //check that it is within range
        if currentLessonIndex < currentModule!.content.lessons.count {
            
            //set the current lesson property
            currentLesson = currentModule!.content.lessons[currentLessonIndex]
            codeText = addStyling(currentLesson!.explanation)
        }
        else {
            //reset the lesson state
            currentLessonIndex = 0
            currentLesson = nil
        }
    }
    
    func hasNextLesson() -> Bool {
        
        return (currentLessonIndex + 1 < currentModule!.content.lessons.count)
    }
    
    func beginTest(_ moduleId: Int) {
        
        //set the current module
        beginModule(moduleId)
        
        //set the current question
        currentQuestionIndex = 0
        
        if currentModule?.test.questions.count ?? 0 > 0 {
            
            currentQuestion = currentModule!.test.questions[currentQuestionIndex]
            codeText = addStyling(currentQuestion!.content)
        }
        
    }
    
    func nextQuestion() {
        
        currentQuestionIndex += 1
        
        if currentQuestionIndex < currentModule!.test.questions.count {
            
            currentQuestion = currentModule!.test.questions[currentQuestionIndex]
            codeText = addStyling(currentQuestion!.content)
        } else {
            
            currentQuestionIndex = 0
            currentQuestion = nil
        }
        
    }
    
    
    //MARK: - Code styling
    private func addStyling(_ htmlString: String) -> NSAttributedString {
        
        var resultString = NSAttributedString()
        var data = Data()
        
        //add the styling data
        if styleData != nil {
            
            data.append(styleData!)
        }
        
        //add the html data
        data.append(Data(htmlString.utf8))
        
        //convert to attributed string
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            
            resultString = attributedString
        }
        
        return resultString
    }
}
