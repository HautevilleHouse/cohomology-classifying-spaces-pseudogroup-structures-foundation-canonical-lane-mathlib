import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Sheaves.SheafCondition
import Mathlib.Geometry.Manifold.SmoothManifold

/-!
# Pseudogroup Geometric Objects

This module anchors the pseudogroup lane to native Mathlib objects
around pseudogroups, their sheaves, and classifying spaces.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean

open Topology CategoryTheory

abbrev Pseudogroup (X : Type u) [TopologicalSpace X] : Type u := X.Pseudogroup

abbrev SheafOnPseudogroup (X : Type u) [TopologicalSpace X] (G : Pseudogroup X) : Type (u+1) := Sheaf (G.toSite) (Type u)

structure PseudogroupGeometricObject where
  space : Type u
  [top : TopologicalSpace space]
  pseudogroup : Pseudogroup space
  sheaf : SheafOnPseudogroup space pseudogroup

def PseudogroupSubstrate : Type _ := Σ (X : Type u) (h : TopologicalSpace X), Pseudogroup X

end HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean