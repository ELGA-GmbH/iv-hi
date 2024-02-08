// -------------------------------------------------------------------------------
//  Logical Model problem.fsh
// -------------------------------------------------------------------------------
Logical: Problem
Id: Problem
Title: "Problem"
Description: """Abbildung der Datenfelder, die für den Entwurf der Datenspezifikation des modularen Rahmenkonzepts für
Österreich für das Disease-Management bei chronischer Herzinsuffizienz erforderlich sind, auf dem des IPS-Modul "Problem"."""

* code 1..1 CodeableConcept "Identification of the condition, problem or diagnosis"
* code from http://hl7.org/fhir/uv/ips/ValueSet/problems-snomed-absent-unknown-uv-ips (preferred)
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hi.iv.elga.gv.at/ValueSet/komorbiditaeten"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for comorbidities"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hi.iv.elga.gv.at/ValueSet/symptomatik"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for symptoms"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.extension[+].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "https://hi.iv.elga.gv.at/ValueSet/diagnose"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for symptoms"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* subject 1..1 Subject "Who has the condition?"
* recordedDate 1..1 dateTime "Date record was first recorded"
* asserter 1..1 Reference(Practitioner or PractitionerRole) "Person who asserts this condition"


// Mapping to HI datamodel
Mapping:  ProblemToErstdokumentationHI
Source:   Problem
Target:   "ErstdokumentationHI"
* -> "ErstdokumentationHI"
* code -> ".Erstabklaerung.Komorbiditaeten or .Erstabklaerung.Symptomatik or .Erstabklaerung.Diagnose"
* subject -> ".Patient"
* recordedDate -> ".Untersuchungsdatum"
* asserter -> ".VPNR"


