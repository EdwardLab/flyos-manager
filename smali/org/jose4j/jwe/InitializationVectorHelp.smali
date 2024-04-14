.class public Lorg/jose4j/jwe/InitializationVectorHelp;
.super Ljava/lang/Object;
.source "InitializationVectorHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static iv(I[BLjava/security/SecureRandom;)[B
    .locals 0

    if-nez p1, :cond_0

    .line 26
    invoke-static {p0, p2}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method
