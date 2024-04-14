.class public Lkawa/standard/call_with_values;
.super Lgnu/mapping/Procedure2;
.source "call_with_values.java"


# static fields
.field public static final callWithValues:Lkawa/standard/call_with_values;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lkawa/standard/call_with_values;

    invoke-direct {v0}, Lkawa/standard/call_with_values;-><init>()V

    sput-object v0, Lkawa/standard/call_with_values;->callWithValues:Lkawa/standard/call_with_values;

    const-string v1, "call-with-values"

    .line 7
    invoke-virtual {v0, v1}, Lkawa/standard/call_with_values;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object p0

    .line 13
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 14
    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 26
    invoke-static {p0, v0}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    aget-object v1, v0, v1

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    .line 29
    aget-object v0, v0, v2

    check-cast v0, Lgnu/mapping/Procedure;

    .line 30
    instance-of v2, v1, Lgnu/mapping/Values;

    if-eqz v2, :cond_0

    .line 32
    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    :goto_0
    return-void
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    check-cast p1, Lgnu/mapping/Procedure;

    check-cast p2, Lgnu/mapping/Procedure;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
