.class public Lkawa/lang/ListPat;
.super Lkawa/lang/Pattern;
.source "ListPat.java"


# instance fields
.field default_value:Ljava/lang/Object;

.field max_length:I

.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p1, p0, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p2, p0, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p2, p0, Lkawa/lang/ListPat;->max_length:I

    iput-object p3, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    return-void
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 26
    instance-of v2, p3, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 28
    check-cast p3, Lgnu/lists/Pair;

    add-int v2, p5, v1

    .line 29
    invoke-virtual {p3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p4, v2

    .line 30
    invoke-virtual {p3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, p0, :cond_1

    return v0

    :cond_1
    if-ne v1, p1, :cond_2

    .line 37
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p3, p0, :cond_2

    return v0

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_3

    add-int p0, p5, v1

    .line 40
    aput-object p2, p4, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    .line 55
    new-array v6, p1, [Ljava/lang/Object;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    .line 56
    invoke-static/range {v0 .. v5}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6

    .line 69
    iget v0, p0, Lkawa/lang/ListPat;->min_length:I

    iget v1, p0, Lkawa/lang/ListPat;->max_length:I

    iget-object v2, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1

    const-string v0, "#<list-pattern min:"

    .line 77
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lkawa/lang/ListPat;->min_length:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    const-string v0, " max:"

    .line 79
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lkawa/lang/ListPat;->max_length:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    const-string v0, " default:"

    .line 81
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    const/16 v0, 0x3e

    .line 83
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public varCount()I
    .locals 1

    .line 73
    iget v0, p0, Lkawa/lang/ListPat;->max_length:I

    return v0
.end method
