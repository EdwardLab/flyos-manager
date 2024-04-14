.class public Lgnu/lists/UnescapedData;
.super Ljava/lang/Object;
.source "UnescapedData.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Externalizable;


# instance fields
.field data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 49
    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 36
    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 44
    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 55
    new-instance v0, Lgnu/lists/UnescapedData;

    iget-object v1, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lgnu/lists/UnescapedData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lgnu/lists/UnescapedData;->data:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
