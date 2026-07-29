import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure GeomagneticDynamoPackage where
  outerCoreFluidDynamics : Type u
  magneticFieldModel : Type v
  coriolisForceIncluded : Prop
  selfExcitationCondition : Prop
  paleomagneticRecord : Prop

structure GeomagneticDynamoEvidence (G : GeomagneticDynamoPackage) where
  coriolisForceIncludedClosed : G.coriolisForceIncluded
  selfExcitationConditionClosed : G.selfExcitationCondition
  paleomagneticRecordClosed : G.paleomagneticRecord

def GeomagneticDynamoClosed (G : GeomagneticDynamoPackage) : Prop :=
  G.coriolisForceIncluded ∧ G.selfExcitationCondition ∧ G.paleomagneticRecord

theorem geomagnetic_dynamo_closed_from_evidence
    (G : GeomagneticDynamoPackage) (E : GeomagneticDynamoEvidence G) :
    GeomagneticDynamoClosed G := by
  exact And.intro E.coriolisForceIncludedClosed
    (And.intro E.selfExcitationConditionClosed E.paleomagneticRecordClosed)

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse