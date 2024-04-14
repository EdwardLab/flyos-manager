.class public Lgnu/kawa/functions/IsEqv;
.super Lgnu/mapping/Procedure2;
.source "IsEqv.java"


# instance fields
.field isEq:Lgnu/kawa/functions/IsEq;

.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    .line 17
    iput-object p3, p0, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    .line 18
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqv;->setName(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.functions.CompilationHelpers:validateIsEqv"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/IsEqv;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 27
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 28
    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    return p0

    .line 29
    :cond_1
    instance-of v0, p0, Lgnu/text/Char;

    if-nez v0, :cond_3

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 32
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqv;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
