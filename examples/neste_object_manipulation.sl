define company = {
    "name": "TechCorp",
    "departments": {
        "engineering": {
            "employees": 50
        },
        "hr": {
            "employees": 10
        }
    }
}

setProp(company, "departments.engineering.employees", 55)

sldeploy getProp(company, "departments.engineering.employees")
