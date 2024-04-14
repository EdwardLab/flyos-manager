.class public Lorg/jose4j/jwe/RsaKeyManagementAlgorithm$RsaOaep;
.super Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.source "RsaKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsaOaep"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string v1, "RSA-OAEP"

    .line 80
    invoke-direct {p0, v0, v1}, Lorg/jose4j/jwe/RsaKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
