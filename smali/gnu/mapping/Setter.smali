.class public Lgnu/mapping/Setter;
.super Lgnu/mapping/ProcedureN;
.source "Setter.java"


# instance fields
.field protected getter:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 11
    iput-object p1, p0, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    .line 12
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(setter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/mapping/Setter;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->setN([Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public numArgs()I
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/mapping/Setter;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit16 v0, v0, 0x1001

    return v0
.end method
