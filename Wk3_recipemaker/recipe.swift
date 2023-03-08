//to access exit() func
import Darwin

//pow func
import Foundation

class recipe {
    var ingred: [String: (Double, String)] = [:]
    var instruc: [String] = ["Mix the dry and wet ingredients separately", "Take the flour in a separate bowl", "Mix milk and eggs separately", "Add honey"]
    var servingsize: Int = 2
    var preptime: (Double, String) = (30, "mins")
    var cooktime: (Double, String) = (45, "mins")
    var difficulty: String = "Medium"

    //just put these inputs (inside init) when creating your first object
    //those inputs will be parsed into  whatever properties you've
    //specified in whatever form/order
    init(Ingredient: String, Quantity: Double, Unit: String,
         Ingredient2: String, Quantity2: Double, Unit2: String){
        //use ... for variadic param?

        ingred[Ingredient] = (Quantity, Unit)
        ingred[Ingredient2] = (Quantity2, Unit2)
    }

    //converts measurements of ingredients to imperial/metric units
    func unitconversion(){

        /* terminator by default is newline, but making it a
        space will attach the print stmnt in the same line
        */
        print("\nMass or Capacity?:", terminator: " ")

        /*unwraps optional types into strings
        also guard let variable can be used in its if scope
        and also beyond the guard-let statements - anywhere in the entire
        code
        Hence favored over if-let here
        */
        guard let quantity = readLine() else{
           exit(0)
        }
        

        //mass conversions 
        if quantity == "mass" || quantity == "Mass"{

            print("Converting to metric/imperial:", terminator: " ")
            guard let unit = readLine() else{
               exit(0)
            }

            //imperial to metric
            if unit == "metric" || unit == "Metric"{
                print("Current unit (oz, lbs, st):", terminator: " ")
                guard let current = readLine() else{
                   exit(0)
                }

                print("Unit required (mg, g, kg):", terminator: " ")
                guard let new = readLine() else{
                   exit(0)
                }

                print("Quantity:", terminator: " ")
                //right now str_number is "<whatever number the user inputs>"
                guard let str_number = readLine() else{
                   exit(0)
                }

                //this is an optn value; it stores an optional double while 
                //trying to convert string into double
                //optn_num = Double?
                let optn_num = Double(str_number)
                
                if let number: Double = optn_num{
                    if current == "oz"{

                        if new == "mg"{
                            print("\(number) \(current) = \(number*28349.5) mg")
                        }

                        if new == "g"{
                            print("\(number) \(current) = \(number*28.3495) g")
                        }

                        if new == "kg"{
                            print("\(number) \(current) = \(number*0.0283495) kg")
                        }
                    }

                    //pounds to mg/g/kg
                    if current == "lbs"{

                        if new == "mg"{
                            print("\(number) \(current) = \(number*453592) mg")
                        }

                        if new == "g"{
                            print("\(number) \(current) = \(number*453.592) g")
                        }

                        if new == "kg"{
                            print("\(number) \(current) = \(number*0.453592) kg")
                        }
                    }

                    //stones to mg/g/kg
                    if current == "st"{

                        if new == "mg"{
                            print("\(number) \(current) = \(number*6.35*(pow(10, 6))) mg")
                        }

                        if new == "g"{
                            print("\(number) \(current) = \(number*6350.29) g")
                        }

                        if new == "kg"{
                            print("\(number) \(current) = \(number*6.35029) kg")
                        }
                    }
                } 

            }

            //metric to imperial
            if unit == "imperial" || unit == "Imperial"{

                print("Current unit (mg, g, kg):", terminator: " ")
                guard let current = readLine() else{
                   exit(0)
                }

                print("Unit required (oz, lbs, st):", terminator: " ")
                guard let new = readLine() else{
                   exit(0)
                }

                print("Quantity:", terminator: " ")
                //right now str_number is "<whatever number the user inputs>"
                guard let str_number = readLine() else{
                   exit(0)
                }

                //this is an optn value; it stores an optional double while 
                //trying to convert string into double
                //optn_num = Double?
                let optn_num = Double(str_number)
                
                if let number: Double = optn_num{
                    if current == "mg"{

                        if new == "oz"{
                            print("\(number) \(current) = \(number*3.527394428438*(pow(10, -5))) oz")
                        }

                        if new == "lbs"{
                            print("\(number) \(current) = \(number*2.204621517773750252*(pow(10, -6))) lbs")
                        }

                        if new == "st"{
                            print("\(number) \(current) = \(number*1.574729655552678714*(pow(10, -7))) st")
                        }
                    }

                    //pounds to mg/g/kg
                    if current == "g"{

                        if new == "oz"{
                            print("\(number) \(current) = \(number*0.035273944284380007175) oz")
                        }

                        if new == "lbs"{
                            print("\(number) \(current) = \(number*0.0022046215177737504484) lbs")
                        }

                        if new == "st"{
                            print("\(number) \(current) = \(number*0.00015747296555526790079) st")
                        }
                    }

                    //stones to mg/g/kg
                    if current == "kg"{

                        if new == "oz"{
                            print("\(number) \(current) = \(number*35.27394428438000773) oz")
                        }

                        if new == "lbs"{
                            print("\(number) \(current) = \(number*2.2046215177737504831) lbs")
                        }

                        if new == "st"{
                            print("\(number) \(current) = \(number*0.15747296555526787976) st")
                        }
                    }
                }
            }

        }

        //capacity conversions
        if quantity == "capacity" || quantity == "Capacity"{

            print("Converting to metric/imperial:", terminator: " ")
            guard let unit = readLine() else{
               exit(0)
            }

            //imperial to metric
            if unit == "metric" || unit == "Metric"{
                print("Current unit (fl oz, cup, pint, quart, gallon):", terminator: " ")
                guard let current = readLine() else{
                   exit(0)
                }

                print("Unit required (ml, L):", terminator: " ")
                guard let new = readLine() else{
                   exit(0)
                }

                print("Quantity:", terminator: " ")
                //right now str_number is "<whatever number the user inputs>"
                guard let str_number = readLine() else{
                   exit(0)
                }

                //this is an optn value; it stores an optional double while 
                //trying to convert string into double
                //optn_num = Double?
                let optn_num = Double(str_number)
                
                if let number: Double = optn_num{
                    if current == "fl oz"{

                        if new == "ml"{
                            print("\(number) \(current) = \(number*28.4131) ml")
                        }

                        if new == "L"{
                            print("\(number) \(current) = \(number*0.02841310000524) L")
                        }

                    }

                    if current == "cup"{

                        if new == "ml"{
                            print("\(number) \(current) = \(number*284.13097505236697771) ml")
                        }

                        if new == "L"{
                            print("\(number) \(current) = \(number*0.28413097505236695195) L")
                        }
                    }

                    //
                    if current == "pint"{

                        if new == "ml"{
                            print("\(number) \(current) = \(number*568.26200010479999492) ml")
                        }

                        if new == "L"{
                            print("\(number) \(current) = \(number*0.56826200010479999136) L")
                        }
                    }

                    if current == "quart"{

                        if new == "ml"{
                            print("\(number) \(current) = \(number*1136.5240002095999898) ml")
                        }

                        if new == "L"{
                            print("\(number) \(current) = \(number*1.1365240002095999827) L")
                        }
                    }

                    if current == "gallon"{

                        if new == "ml"{
                            print("\(number) \(current) = \(number*4546.0960008383999593) ml")
                        }

                        if new == "L"{
                            print("\(number) \(current) = \(number*4.5460960008383999309) L")
                        }
                    }
                } 
            }

            //metric to imperial
            if unit == "imperial" || unit == "Imperial"{

                print("Current unit (ml or L):", terminator: " ")
                guard let current = readLine() else{
                   exit(0)
                }

                print("Unit required (fl oz, cup, pint, quart, gallon):", terminator: " ")
                guard let new = readLine() else{
                   exit(0)
                }

                print("Quantity:", terminator: " ")
                //right now str_number is "<whatever number the user inputs>"
                guard let str_number = readLine() else{
                   exit(0)
                }

                //this is an optn value; it stores an optional double while 
                //trying to convert string into double
                //optn_num = Double?
                let optn_num = Double(str_number)
                
                if let number: Double = optn_num{
                    
                    //ml to fl oz....gallons
                    if current == "ml"{

                        if new == "fl oz"{
                            print("\(number) \(current) = \(number*0.0351951) fl oz")
                        }

                        if new == "cup"{
                            print("\(number) \(current) = \(number*0.003519510309660416) cup(s)")
                        }

                        if new == "pint"{
                            print("\(number) \(current) = \(number*0.0017597549999934002443) pint(s)")
                        }

                        if new == "quart"{
                            print("\(number) \(current) = \(number*0.00087987749999670012216) quart(s)")
                        }

                        if new == "gallon"{
                            print("\(number) \(current) = \(number*0.00021996937499917503054) gallon(s)")
                        }
                    }

                    //litres to fl oz...gallons
                    if current == "L"{

                        if new == "fl oz"{
                            print("\(number) \(current) = \(number*35.19509999986800608) fl oz")
                        }

                        if new == "cup"{
                            print("\(number) \(current) = \(number*3.519510309660415448) cup(s)")
                        }

                        if new == "pint"{
                            print("\(number) \(current) = \(number*1.7597549999934003484) pint(s)")
                        }

                        if new == "quart"{
                            print("\(number) \(current) = \(number*0.8798774999967001742) quart(s)")
                        }

                        if new == "gallon"{
                            print("\(number) \(current) = \(number*0.21996937499917504355) gallon(s)")
                        }
                    }
                }
            }

        }
                
    }
    
    //var  to keep count of how many times steps() has been called
    var calls = 0
    //steps prints out instructions chronologically with each call
    func steps(){
        print("\nStep \(calls+1): \(instruc[calls])")
        calls += 1
    }
}

var pancake = recipe(Ingredient: "Flour", Quantity: 250, Unit: "g", 
Ingredient2: "Milk", Quantity2: 150, Unit2: "ml")

print("\nPancake's ingredients: \(pancake.ingred)")

pancake.steps()
pancake.steps()
pancake.steps()
pancake.steps()

pancake.unitconversion()

/*

use ... for variadic param?
        for i in Ingredient{
            ingred[Ingredient[i]] = (Quantity[i], Unit[i])
        }

*/