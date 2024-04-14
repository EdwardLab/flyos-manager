.class public Lorg/jose4j/keys/EllipticCurves;
.super Ljava/lang/Object;
.source "EllipticCurves.java"


# static fields
.field private static final COFACTOR:I = 0x1

.field public static final P256:Ljava/security/spec/ECParameterSpec;

.field public static final P384:Ljava/security/spec/ECParameterSpec;

.field public static final P521:Ljava/security/spec/ECParameterSpec;

.field public static final P_256:Ljava/lang/String; = "P-256"

.field public static final P_384:Ljava/lang/String; = "P-384"

.field public static final P_521:Ljava/lang/String; = "P-521"

.field private static final curveToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/security/spec/EllipticCurve;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final nameToSpec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/spec/ECParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->nameToSpec:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->curveToName:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089210356248762697446949407573530086143415290314195533631308867097853948"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "41058363725152142129326129780047268409114441015993725554835256314039467401291"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPoint;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "48439561293906451759052585252797914202762949526041747995844080717082404635286"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "36134250956749795798585127919587881956611106672985015071877198253568414405109"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v0, Lorg/jose4j/keys/EllipticCurves;->P256:Ljava/security/spec/ECParameterSpec;

    .line 81
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldFp;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112316"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "27580193559959705877849011840389048093056905856361568521428707301988689241309860865136260764883745107765439761230575"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/security/spec/ECPoint;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "26247035095799689268623156744566981891852923491109213387815615900925518854738050089022388053975719786650872476732087"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "8325710961489029985546751289520108179287853048861315594709205902480503199884419224438643760392947333078086511627871"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v5, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v1, Lorg/jose4j/keys/EllipticCurves;->P384:Ljava/security/spec/ECParameterSpec;

    .line 112
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/EllipticCurve;

    new-instance v5, Ljava/security/spec/ECFieldFp;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057148"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "1093849038073734274511112390766805569936207598951683748994586394495953116150735016013708737573759623248592132296706313309438452531591012912142327488478985984"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5, v6, v7}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v5, Ljava/security/spec/ECPoint;

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "2661740802050217063228768716723360960729859168756973147706671368418802944996427808491545080627771902352094241225065558662157113545570916814161637315895999846"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "3757180025770020463545507224491183603594455134769762486694567779615544477440556316691234405012945539562144444537289428522585666729196580810124344277578376784"

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v5, v6, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v2, Lorg/jose4j/keys/EllipticCurves;->P521:Ljava/security/spec/ECParameterSpec;

    const-string v3, "P-256"

    .line 152
    invoke-static {v3, v0}, Lorg/jose4j/keys/EllipticCurves;->addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "P-384"

    .line 153
    invoke-static {v0, v1}, Lorg/jose4j/keys/EllipticCurves;->addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    const-string v0, "P-521"

    .line 154
    invoke-static {v0, v2}, Lorg/jose4j/keys/EllipticCurves;->addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCurve(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    .line 43
    sget-object v0, Lorg/jose4j/keys/EllipticCurves;->nameToSpec:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/jose4j/keys/EllipticCurves;->curveToName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/jose4j/keys/EllipticCurves;->curveToName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 49
    sget-object v0, Lorg/jose4j/keys/EllipticCurves;->nameToSpec:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/ECParameterSpec;

    return-object p0
.end method
