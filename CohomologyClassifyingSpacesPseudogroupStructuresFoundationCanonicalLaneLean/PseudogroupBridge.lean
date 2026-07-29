import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean.CohomologyLayer

/-!
# Pseudogroup Bridge

This module provides the bridge closure for pseudogroup classifying space cohomology.
-/

noncomputable section

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean