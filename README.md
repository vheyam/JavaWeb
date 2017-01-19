# JavaWeb
Project for learning purposes.

We intend to create “new patient registry management system”. Employees will have access to the system, the system could be made
available for everyone to enter data, but complications may arise regarding accuracy and authenticity, which is why only the employees
at the clinic/hospital shall input the data. So, staff enters “patient” details to the system which will decide if the matter is urgent or not so urgent. If the matter is urgent, patient will be given an appointment to see the doctor faster than if the matter were not so urgent.
# Features
* Web Site should be responsive as possible.
* Security - for this prototype atleast hash password, maybe MD5 or something stronger.
* Error handling.
* Database - Hibernate.

..........................................................................................................................................
* 3 navigation bars: Public, nurse and admin. Reason - seperate access to the system. (Maybe not the smartest way, but hey, it works).
* **Public navigation bar**: home, contacts, suggestion box (possibly integrate with contacts).
* **Admin navigation bar**: add employee, show employees + remove employee, statistics (some kind statistics of the system).
* **Nurse navigation bar**: add patient, show patient, show schedule, schedule a new patient.
* Send email then employee is created to notify him and send him his credentials. Suggestion box send mail to our email address.

All of navigation bar mentioned "sections" is a seperate fully working feature.
