import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure EarthquakeSourceMechanismPackage where
  faultGeometry : Type u
  stressDrop : Type v
  momentTensor : Type w
  doubleCoupleModel : Prop
  rupturePropagation : Prop
  magnitudeScaling : Prop

structure EarthquakeSourceMechanismEvidence (E : EarthquakeSourceMechanismPackage) where
  doubleCoupleModelClosed : E.doubleCoupleModel
  rupturePropagationClosed : E.rupturePropagation
  magnitudeScalingClosed : E.magnitudeScaling

def EarthquakeSourceMechanismClosed (E : EarthquakeSourceMechanismPackage) : Prop :=
  E.doubleCoupleModel ∧ E.rupturePropagation ∧ E.magnitudeScaling

theorem earthquake_source_mechanism_closed_from_evidence
    (E : EarthquakeSourceMechanismPackage) (Ev : EarthquakeSourceMechanismEvidence E) :
    EarthquakeSourceMechanismClosed E := by
  exact And.intro Ev.doubleCoupleModelClosed
    (And.intro Ev.rupturePropagationClosed Ev.magnitudeScalingClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse