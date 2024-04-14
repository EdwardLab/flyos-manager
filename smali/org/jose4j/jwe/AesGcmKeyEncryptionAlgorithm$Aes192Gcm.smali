.class public Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;
.super Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
.source "AesGcmKeyEncryptionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes192Gcm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xc0

    .line 138
    invoke-static {v0}, Lorg/jose4j/lang/ByteUtil;->byteLength(I)I

    move-result v0

    const-string v1, "A192GCMKW"

    invoke-direct {p0, v1, v0}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method
