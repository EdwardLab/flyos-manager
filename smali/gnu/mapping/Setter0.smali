.class public Lgnu/mapping/Setter0;
.super Lgnu/mapping/Setter;
.source "Setter0.java"


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lgnu/mapping/Setter0;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->set0(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lgnu/mapping/Setter0;->getter:Lgnu/mapping/Procedure;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->set0(Ljava/lang/Object;)V

    .line 20
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 18
    :cond_0
    new-instance p1, Lgnu/mapping/WrongArguments;

    invoke-direct {p1, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw p1
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method
