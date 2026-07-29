import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean.PseudogroupObjects
import Mathlib.Topology.ClassifyingSpaces

/-!
# Classifying Space Layer

This module constructs the classifying space associated to a pseudogroup,
recording its homotopy type and cohomology.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean

open CategoryTheory Topology

structure ClassifyingSpaceData (X : Type u) [TopologicalSpace X] (G : Pseudogroup X) where
  space : Type u
  [top : TopologicalSpace space]
  projection : X → space
  localHomeo : ∀ x : X, LocalHomeomorph X space
  homotopyGroup : ℕ → Group
  cohomologyRing : ℕ → Ring

noncomputable def classifyingSpace (X : Type u) [TopologicalSpace X] (G : Pseudogroup X) : ClassifyingSpaceData X G := sorry

end HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean