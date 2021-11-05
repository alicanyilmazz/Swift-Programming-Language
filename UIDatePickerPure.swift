extension TodoExplanationViewController{
    func OpenDatePicker(){
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
        datePicker.addTarget(self, action: #selector(self.datePickerHandler(datePicker:)), for: .valueChanged)
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.backgroundColor = #colorLiteral(red: 0.1960784314, green: 0.2470588235, blue: 0.2941176471, alpha: 0.8501358537)
        datePicker.tintColor = #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1)
        datePicker.setValue(#colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1) , forKeyPath: "textColor")
        datePicker.minimumDate = Calendar.current.date(byAdding: .minute, value: 0, to: Date())
        self.todoExplanationDateLbl.inputView = datePicker
        
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
        toolbar.tintColor = #colorLiteral(red: 0.1960784314, green: 0.2470588235, blue: 0.2941176471, alpha: 0.8501358537)
        toolbar.barTintColor = #colorLiteral(red: 0.9882352941, green: 0.7490196078, blue: 0.2862745098, alpha: 1)
        toolbar.backgroundColor = .orange
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(self.cancelButtonClick))
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.doneButtonClick))
        let flexibleButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([cancelButton,flexibleButton,doneButton], animated: true)
        self.todoExplanationDateLbl.inputAccessoryView = toolbar
    }
    
    
    @objc func cancelButtonClick(){
        self.todoExplanationDateLbl.resignFirstResponder()
    }

   
    @objc func doneButtonClick(){
        if let dateAndTimePicker = self.todoExplanationDateLbl.inputView as? UIDatePicker{
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM d, h:mm a"
            var date = dateFormatter.string(from: dateAndTimePicker.date)
            self.todoExplanationDateLbl.text = date
        }
        self.todoExplanationDateLbl.resignFirstResponder()
    }
    
    @objc func datePickerHandler(datePicker : UIDatePicker){
        /*
        if let dateAndTimePicker = self.todoExplanationDateLbl.inputView as? UIDatePicker{
            var dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM d, h:mm a"
            var date = dateFormatter.string(from: dateAndTimePicker.date)
            self.todoExplanationDateLbl.text = date
        }
        */
    }
    func setUIComponents() {
        todoExplanationImage.image = UIImage(named: "ex")
        todoExplanationCompletedSwitch.onTintColor = #colorLiteral(red: 0.9956704974, green: 0.6578197479, blue: 0.2000168562, alpha: 1)
        todoExplanationCompletedSwitch.thumbTintColor = #colorLiteral(red: 0.1215686275, green: 0.1607843137, blue: 0.2, alpha: 1)
    }
    
    func convertStringToDate(date stringDate : String?) -> Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, h:mm a"
        guard let date = stringDate, !date.isEmpty else {
            return dateFormatter.date(from: "Dec 22, 9:56 AM")!
        }
        return dateFormatter.date(from: date)!
    }
}
/*

        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, h:mm a" // MMM d, h:mm a // yyyy-MM-dd-HH-mm-ss
        var date = dateFormatter.string(from: presentation.date as Date)

*/
