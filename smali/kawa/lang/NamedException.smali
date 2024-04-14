.class public Lkawa/lang/NamedException;
.super Ljava/lang/RuntimeException;
.source "NamedException.java"


# instance fields
.field args:[Ljava/lang/Object;

.field name:Lgnu/mapping/Symbol;


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 17
    iput-object p1, p0, Lkawa/lang/NamedException;->name:Lgnu/mapping/Symbol;

    .line 18
    iput-object p2, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lkawa/lang/NamedException;->checkMatch(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkMatch(Ljava/lang/Object;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lkawa/lang/NamedException;->name:Lgnu/mapping/Symbol;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#<ERROR"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    iget-object v1, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 40
    aget-object v1, v1, v3

    const-string v5, "misc-error"

    if-ne v1, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    const/16 v1, 0x20

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    iget-object v1, p0, Lkawa/lang/NamedException;->args:[Ljava/lang/Object;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ">"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
