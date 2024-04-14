.class public Lorg/jose4j/lang/DefaultByteGenerator;
.super Ljava/lang/Object;
.source "DefaultByteGenerator.java"

# interfaces
.implements Lorg/jose4j/lang/ByteGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/jose4j/lang/DefaultByteGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public randomBytes(I)[B
    .locals 1

    .line 39
    new-array p1, p1, [B

    .line 40
    iget-object v0, p0, Lorg/jose4j/lang/DefaultByteGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method
