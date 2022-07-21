[![Build Status](https://travis-ci.org/futres/fovt.svg?branch=master)](https://travis-ci.org/futres/fovt)
[![DOI](https://zenodo.org/badge/13996/futres/fovt.svg)](https://zenodo.org/badge/latestdoi/13996/futres/fovt)

# FuTRES Ontology of Vertebrate Traits (FOVT)

This ontology is to map measurable vertebrate traits. We leverage the BioCollections Ontology ([BCO](http://purl.obofoundry.org/ontology/bco.owl)) to link observations of individual specimens to their trait values. Traits are defined in the Ontology of Biological Attributes ([OBA](http://purl.obofoundry.org/ontology/oba.owl)).

More information on the ontology can be found at http://obofoundry.org/ontology/fovt (once ontology is registered).

More information on FuTRES is available at https://futres.org/.

## Workflow

1. Check if needed parts of term are in UBERON or OBA. 
2. Add needed part of term to UBERON (7500000-7999999).
3. Import and add terms to OBA.
4. Import terms to FOVT, and import to <a href="https://geome-db.org/workbench/template"> GEOME</a> see @JDeck88.

## Term Requests

New term requests can be made by creating an issue. 

Please provide:
1. anatomical feature (e.g., bone)
2. anatomical points and/or anatomical axis (e.g., humerus caput to ventral trochlea or lateral side)
3. measurement (e.g., length, diameter, circumference) and direction (e.g., medial-lateral, dorsal-ventral)
4. reference for measurement
5. any synonyms (e.g., length ML as a synonym for breadth, width as a synonym for breadth)

You can also use this feature to request synonyms and references for existing terms.

### Term Naming Conventions

* avoid minimum and maximum lengths, unless both are used (e.g., minimum palatine length and minimum palatine length) <i>and</i> there are no definitive points
* side-bone-measurement (e.g., left occipital length)
* bone-anatomical position-measurement (e.g., humerus lateral length)
* only use length and axis; avoid "breadth", "depth", and "width" (e.g., humerus length ML)

## Versions

### Stable release versions

The latest version of the ontology can always be found at:

http://purl.obolibrary.org/obo/fovt.owl

(note this will not show up until the request has been approved by obofoundry.org)

### Editors' version

Editors of this ontology should use the edit version, [src/ontology/fovt-edit.owl](src/ontology/fovt-edit.owl)

## Contact

Please use this GitHub repository's [Issue tracker](https://github.com/futres/fovt/issues) to request new terms/classes or report errors or specific concerns related to the ontology.

## Acknowledgements

FuTRES is funded by the National Science Foundation grant #1759808.

This ontology repository was created using the [ontology starter kit](https://github.com/INCATools/ontology-starter-kit)
