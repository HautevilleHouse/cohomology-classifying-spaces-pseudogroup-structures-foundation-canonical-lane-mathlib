import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean.PseudogroupBridge

/-!
# Gate Lemmas

Gate closure for pseudogroup classifying space cohomology.
-/

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end HautevilleHouse.CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean