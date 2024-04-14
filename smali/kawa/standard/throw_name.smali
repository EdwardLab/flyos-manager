.class public Lkawa/standard/throw_name;
.super Lgnu/mapping/ProcedureN;
.source "throw_name.java"


# static fields
.field public static final throwName:Lkawa/standard/throw_name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lkawa/standard/throw_name;

    invoke-direct {v0}, Lkawa/standard/throw_name;-><init>()V

    sput-object v0, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 15
    aget-object v0, p1, v0

    .line 16
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 18
    array-length p1, p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 19
    invoke-static {v0}, Lkawa/standard/prim_throw;->throw_it(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 22
    new-instance v1, Lkawa/lang/NamedException;

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-direct {v1, v0, p1}, Lkawa/lang/NamedException;-><init>(Lgnu/mapping/Symbol;[Ljava/lang/Object;)V

    throw v1

    .line 24
    :cond_1
    :goto_0
    new-instance p1, Lkawa/lang/GenericError;

    const-string v0, "bad arguments to throw"

    invoke-direct {p1, v0}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
