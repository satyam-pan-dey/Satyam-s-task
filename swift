import Firebase


Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
    
}


PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil) { verificationID, error in
    
}


struct Dealer {
    let name: String
    let mobile: String
    let material: String
    let weight: Double
    let quantity: Int
    let city: String
    let state: String
}

struct Driver {
    let name: String
    let age: Int
    let truckNumber: String
    let mobile: String
    let truckCapacity: Double
    let transporterName: String
    let drivingExperience: Int
    let interestedRoutes: [(fromState: String, fromCity: String, toState: String, toCity: String)]
}



let drivers: [Driver] = ...


let dealerLocation = (state: "Madhya Pradesh", city: "Indore")
let matchedDrivers = drivers.filter { driver in
    driver.interestedRoutes.contains { route in
        route.fromState == dealerLocation.state && route.fromCity == dealerLocation.city
    }
}

