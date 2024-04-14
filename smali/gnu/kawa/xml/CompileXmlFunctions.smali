.class public Lgnu/kawa/xml/CompileXmlFunctions;
.super Ljava/lang/Object;
.source "CompileXmlFunctions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateApplyMakeUnescapedData(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1

    .line 12
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 13
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 14
    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    aget-object v0, p1, p2

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 15
    new-instance p0, Lgnu/expr/QuoteExp;

    check-cast p3, Lgnu/kawa/xml/MakeUnescapedData;

    aget-object p1, p1, p2

    check-cast p1, Lgnu/expr/QuoteExp;

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lgnu/kawa/xml/MakeUnescapedData;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static validateApplyTreeScanner(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 23
    check-cast p3, Lgnu/kawa/xml/TreeScanner;

    iget-object p1, p3, Lgnu/kawa/xml/TreeScanner;->type:Lgnu/lists/NodePredicate;

    .line 24
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object p2

    if-nez p2, :cond_0

    instance-of p2, p1, Lgnu/bytecode/Type;

    if-eqz p2, :cond_0

    .line 25
    check-cast p1, Lgnu/bytecode/Type;

    invoke-static {p1}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    :cond_0
    return-object p0
.end method
