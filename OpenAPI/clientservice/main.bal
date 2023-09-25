import ballerina/io;

public function main() returns error? {
    Client httpClient = check new ();

    
    foreach var l in check httpClient->/lecturers {
        io:println(l);
    }

    // _ = check httpClient->/newlecturer.post({full_name: "Lecturer 1",office_number: "Office1",staff_number: "1",list_of_courses: ["PLU", "PRG"]});
    // _ = check httpClient->/newlecturer.post({full_name: "Lecturer 2",office_number: "Office2",staff_number: "2",list_of_courses: ["OPS", "PLU"]});
    // _ = check httpClient->/newlecturer.post({full_name: "Lecturer 3",office_number: "Office3",staff_number: "3",list_of_courses: ["PRG", "DPG"]});
    // _ = check httpClient->/newlecturer.post({full_name: "Lecturer 4",office_number: "Office4",staff_number: "4",list_of_courses: ["PLU", "DPG"]});


    // var lecturer = check httpClient->/lecturerbystaffnumber/["1"];
    // io:println(lecturer.toString());


    // var lecturers = check httpClient->/lecturersbyofficenumber/["Office1"];
    // io:println(lecturers.toString());


    // var lecturerscc = check httpClient->/lecturersbycoursecode/["PLU"];
    // io:println(lecturerscc.toString());


    // Lecturer update = {full_name: "N Nashandi",office_number: "Office1",staff_number: "1",list_of_courses: ["OPS"]};
    // _ = check httpClient->/updatelecturerdetails.put(update);


    // var deleted = check httpClient->/deletelecturer/["1"].delete;
    // io:println(deleted.toString());

}

