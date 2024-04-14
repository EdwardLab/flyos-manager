.class public Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.super Lorg/jose4j/jws/BaseSignatureAlgorithm;
.source "RsaUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha512;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha256;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha384;,
        Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha256;
    }
.end annotation


# static fields
.field static final MGF1:Ljava/lang/String; = "MGF1"

.field public static final RSASSA_PSS:Ljava/lang/String; = "RSASSA-PSS"

.field static final TRAILER:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "RSA"

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lorg/jose4j/jws/BaseSignatureAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static choosePssAlgorithmName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Signature"

    .line 111
    invoke-static {v0}, Ljava/security/Security;->getAlgorithms(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "RSASSA-PSS"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    return-object p0
.end method


# virtual methods
.method public validatePrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    return-void
.end method

.method public validatePublicKey(Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lorg/jose4j/jwx/KeyValidationSupport;->checkRsaKeySize(Ljava/security/Key;)V

    return-void
.end method
