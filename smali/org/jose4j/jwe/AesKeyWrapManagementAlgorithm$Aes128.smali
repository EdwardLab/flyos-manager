.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;
.super Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "A128KW"

    const/16 v1, 0x10

    .line 81
    invoke-direct {p0, v0, v1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;-><init>(Ljava/lang/String;I)V

    return-void
.end method
