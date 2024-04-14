.class public Lgnu/kawa/functions/AppendValues;
.super Lgnu/mapping/MethodProc;
.source "AppendValues.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final appendValues:Lgnu/kawa/functions/AppendValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lgnu/kawa/functions/AppendValues;

    invoke-direct {v0}, Lgnu/kawa/functions/AppendValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyAppendValues"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/AppendValues;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3

    .line 23
    sget-object v0, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 26
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    return-void

    .line 29
    :cond_0
    instance-of v2, v1, Lgnu/lists/Consumable;

    if-eqz v2, :cond_1

    .line 30
    check-cast v1, Lgnu/lists/Consumable;

    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v1, v2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3

    .line 38
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 39
    array-length v1, v0

    .line 40
    instance-of v2, p3, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_1

    instance-of v2, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_2

    .line 43
    aget-object v2, v0, p1

    invoke-virtual {v2, p2, p3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 66
    sget-object p1, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object p1
.end method
