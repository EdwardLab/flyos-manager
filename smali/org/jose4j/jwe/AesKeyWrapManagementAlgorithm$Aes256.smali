.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;
.super Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "A256KW"

    const/16 v1, 0x20

    .line 97
    invoke-direct {p0, v0, v1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method
