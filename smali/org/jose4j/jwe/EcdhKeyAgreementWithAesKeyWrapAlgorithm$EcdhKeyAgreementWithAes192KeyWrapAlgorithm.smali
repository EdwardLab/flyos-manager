.class public Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm$EcdhKeyAgreementWithAes192KeyWrapAlgorithm;
.super Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
.source "EcdhKeyAgreementWithAesKeyWrapAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdhKeyAgreementWithAes192KeyWrapAlgorithm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 100
    new-instance v0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;

    invoke-direct {v0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;-><init>()V

    invoke-virtual {v0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;->setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-result-object v0

    const-string v1, "ECDH-ES+A192KW"

    invoke-direct {p0, v1, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementWithAesKeyWrapAlgorithm;-><init>(Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V

    return-void
.end method
