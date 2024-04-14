.class public Lkawa/lang/AnyPat;
.super Lkawa/lang/Pattern;
.source "AnyPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public static make()Lkawa/lang/AnyPat;
    .locals 1

    .line 15
    new-instance v0, Lkawa/lang/AnyPat;

    invoke-direct {v0}, Lkawa/lang/AnyPat;-><init>()V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 0

    .line 24
    aput-object p1, p2, p3

    const/4 p1, 0x1

    return p1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<match any>"

    .line 19
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    return-void
.end method

.method public varCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
