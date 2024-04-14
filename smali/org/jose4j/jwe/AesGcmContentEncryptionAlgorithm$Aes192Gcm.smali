.class public Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm$Aes192Gcm;
.super Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.source "AesGcmContentEncryptionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes192Gcm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "A192GCM"

    const/16 v1, 0xc0

    .line 101
    invoke-direct {p0, v0, v1}, Lorg/jose4j/jwe/AesGcmContentEncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method
