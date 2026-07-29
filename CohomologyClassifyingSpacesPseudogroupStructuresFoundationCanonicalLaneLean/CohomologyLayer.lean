import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean.ClassifyingSpaceLayer
import Mathlib.Algebra.Cohomology

/-!
# Cohomology Layer

This module defines cohomology theories for pseudogroup classifying spaces.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean

open CategoryTheory Topology

structure PseudogroupCohomology (X : Type u) [TopologicalSpace X] (G : Pseudogroup X) where
  degree : ℕ
  coefficientRing : Ring
  group : AddCommGroup
  ring : Ring
  structureSheaf : SheafOnPseudogroup X G

noncomputable def sheafCohomology (X : Type u) [TopologicalSpace X] (G : Pseudogroup X) (n : ℕ) (F : SheafOnPseudogroup X G) : AddCommGroup := sorry

noncomputable def singularCohomology (X : Type u) [TopologicalSpace X] (G : Pseudogroup X) (n : ℕ) (R : Ring) : AddCommGroup := sorry

end HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean