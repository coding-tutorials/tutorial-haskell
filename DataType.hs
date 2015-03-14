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
getFreelancerName (Freelancer name occupation) = name
