--Type Synonym, basically name the existings types
type Name = String
type Age = Int
type Person = (String, Int)

--define some data type (is like structure in C/C++)
data OrganizationInfo = Organization String
												deriving (Show) --need this to print this datatype

--we make enumerations (or enums) with datatypes
data OccupationInfo = Programmer
								|	ScrumMaster
								| Manager
									deriving (Show)

--and we can have a datatype with multiple constructors
data WorkerInfo = Employee String OccupationInfo OrganizationInfo
								|	Freelancer String OccupationInfo
								 	deriving (Show)


organizationAcme = Organization "Acme Inc."

--both Richard and Carl are "WorkerInfo" datatypes!
richard = Employee "Richard Jones" Manager organizationAcme
carl = Freelancer "Carl Roman" Programmer

--so we can add both in a same list!
workers = [richard, carl]

--get some info, eg.: getEmployeeOrganization richard, getFreelancerName carl
--todo: is possible to make getWorkerOccupation or getWorkerName?? 
getEmployeeOrganization (Employee name occupation organization) = organization

getFreelancerName :: WorkerInfo -> String --we can set types too, it's cool!
getFreelancerName (Freelancer name occupation) = name

--ok, but it sucks creating a function for each "property" of a data type, right?
--so Haskell has this sugar called Record Synthax
data PersonInfo = Person {
	name :: String,
	city :: String,
	country :: String
} deriving (Show)

somePerson = Person "Kate Abraams" "New York" "USA"

--and instead creating a function to read some person's values
--we can simple do: name somePerson, city somePerson..

--for readig purposes, we can create types
type Name = String
type Age = Int
--and use then instead default types, look:
data CatInfo = Cat Name Age
									deriving(Show)

someCat = Cat "Toddy" 5


