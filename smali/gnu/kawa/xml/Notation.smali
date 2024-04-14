.class public Lgnu/kawa/xml/Notation;
.super Ljava/lang/Object;
.source "Notation.java"


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lgnu/kawa/xml/Notation;Lgnu/kawa/xml/Notation;)Z
    .locals 0

    .line 10
    iget-object p1, p1, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    iget-object p2, p2, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {p1, p2}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 15
    instance-of v0, p1, Lgnu/kawa/xml/Notation;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/kawa/xml/Notation;

    invoke-virtual {p0, p0, p1}, Lgnu/kawa/xml/Notation;->equals(Lgnu/kawa/xml/Notation;Lgnu/kawa/xml/Notation;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 20
    iget-object v0, p0, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    return v0
.end method
