.class public Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm$HmacSha384Aes192;
.super Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
.source "Pbes2HmacShaWithAesKeyWrapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha384Aes192"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 173
    new-instance v0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;

    invoke-direct {v0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;-><init>()V

    invoke-virtual {v0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;->setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;

    move-result-object v0

    const-string v1, "PBES2-HS384+A192KW"

    const-string v2, "HmacSHA384"

    invoke-direct {p0, v1, v2, v0}, Lorg/jose4j/jwe/Pbes2HmacShaWithAesKeyWrapAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;)V

    return-void
.end method
