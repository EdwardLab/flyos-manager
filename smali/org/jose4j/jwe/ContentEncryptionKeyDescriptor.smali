.class public Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;
.super Ljava/lang/Object;
.source "ContentEncryptionKeyDescriptor.java"


# instance fields
.field private final contentEncryptionKeyAlgorithm:Ljava/lang/String;

.field private final contentEncryptionKeyByteLength:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyByteLength:I

    .line 29
    iput-object p2, p0, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyAlgorithm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentEncryptionKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncryptionKeyByteLength()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->contentEncryptionKeyByteLength:I

    return v0
.end method
