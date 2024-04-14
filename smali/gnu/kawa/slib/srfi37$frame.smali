.class public Lgnu/kawa/slib/srfi37$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi37.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi37.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi37.scm\n+ 2 std_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/std_syntax.scm\n*L\n63#1,153:63\n30#2:10000\n*E\n"
.end annotation


# instance fields
.field operand$Mnproc:Ljava/lang/Object;

.field options:Ljava/lang/Object;

.field unrecognized$Mnoption$Mnproc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 64
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 65
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    sget-object p1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {p1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 69
    new-instance v0, Lgnu/kawa/slib/srfi37$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame0;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame0;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/Object;

    .line 70
    iget-object p1, p0, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda1find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "string-ref"

    const-string v1, "string-length"

    .line 78
    new-instance v2, Lgnu/kawa/slib/srfi37$frame1;

    invoke-direct {v2}, Lgnu/kawa/slib/srfi37$frame1;-><init>()V

    iput-object p0, v2, Lgnu/kawa/slib/srfi37$frame1;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iput-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    iput-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iput-object p4, v2, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    .line 79
    sget-object p1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    iget-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    const/4 p4, 0x1

    :try_start_0
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_7

    invoke-static {p3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_0

    .line 80
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/slib/srfi37$frame;->lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_3

    .line 81
    :cond_0
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_1
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    :try_start_2
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_5

    invoke-static {p1, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    iput-char p1, v2, Lgnu/kawa/slib/srfi37$frame1;->name:C

    .line 82
    iget-char p1, v2, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-char p1, v2, Lgnu/kawa/slib/srfi37$frame1;->name:C

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    invoke-static {p1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object p1

    :goto_0
    iput-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    .line 87
    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object p2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->index:Ljava/lang/Object;

    sget-object v0, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {p2, p3, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, v2, Lgnu/kawa/slib/srfi37$frame1;->shorts:Ljava/lang/Object;

    :try_start_3
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    invoke-static {p3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_4
    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    const-string p2, "option-required-arg?"

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 88
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_5
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p4, :cond_2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p4, :cond_4

    goto :goto_1

    :cond_2
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_6
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p4, :cond_4

    goto :goto_1

    :catch_0
    move-exception p2

    .line 89
    new-instance p4, Lgnu/mapping/WrongType;

    const-string v0, "option-optional-arg?"

    invoke-direct {p4, p2, v0, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :catch_1
    move-exception p4

    .line 88
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p4, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_3
    if-eqz p1, :cond_4

    .line 90
    :goto_1
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 100
    :cond_4
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->option:Ljava/lang/Object;

    :try_start_7
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_2

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_5

    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->args:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_6

    .line 102
    :goto_2
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 110
    :cond_6
    iget-object p1, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    iget-object p2, v2, Lgnu/kawa/slib/srfi37$frame1;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1

    :catch_2
    move-exception p4

    .line 100
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p4, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_3
    move-exception p2

    .line 87
    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, -0x2

    const-string v0, "x"

    invoke-direct {p3, p2, v0, p4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    .line 81
    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_6
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, p4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_7
    move-exception p1

    .line 79
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 122
    new-instance v0, Lgnu/kawa/slib/srfi37$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame2;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    .line 123
    iget-object p1, v0, Lgnu/kawa/slib/srfi37$frame2;->operands:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    sget-object p1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object p2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame2;->seeds:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    iget-object p2, v0, Lgnu/kawa/slib/srfi37$frame2;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public lambda5scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "string-length"

    .line 130
    new-instance v1, Lgnu/kawa/slib/srfi37$frame3;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi37$frame3;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/srfi37$frame3;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 132
    sget-object p1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object p2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 133
    :cond_0
    sget-object p2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {p2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 134
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iput-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    .line 137
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    const-string p2, "--"

    invoke-static {p2, p1}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/slib/srfi37$frame;->lambda4scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 147
    :cond_1
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    const/4 p2, 0x1

    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_10

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-le p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    const-string v4, "string-ref"

    if-eqz p1, :cond_8

    .line 148
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v5, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_1
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5

    invoke-static {v5, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-static {p1, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 149
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v5, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_2
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    invoke-static {v5, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-static {p1, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 150
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v5, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_3
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v5, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    invoke-static {p1, v5}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    add-int/2addr p1, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    .line 151
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    .line 152
    :goto_1
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_4
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {v6}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/text/Char;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_5
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    move-object v7, p1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_0

    invoke-static {v6, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 157
    :cond_4
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 154
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, v4, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    .line 152
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_5
    if-eqz p1, :cond_9

    goto :goto_2

    :catch_3
    move-exception p1

    .line 150
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_6
    if-eqz p1, :cond_9

    goto :goto_2

    :catch_4
    move-exception p1

    .line 149
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_7
    if-eqz p1, :cond_9

    goto :goto_2

    :catch_5
    move-exception p1

    .line 148
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_8
    if-eqz p1, :cond_9

    .line 147
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    .line 137
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->temp:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v5, :cond_a

    .line 160
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 181
    :cond_a
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_7
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_f

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v5, 0x3

    if-le p1, v5, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    const-string v5, "substring"

    if-eqz p1, :cond_d

    .line 182
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_8
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_7

    invoke-static {v6, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {p1, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 181
    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v6, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_9
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_6

    invoke-static {v6, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    invoke-static {p1, v6}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_5

    :catch_6
    move-exception p1

    .line 183
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_c
    if-eqz p1, :cond_11

    goto :goto_5

    :catch_7
    move-exception p1

    .line 182
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_d
    if-eqz p1, :cond_11

    .line 185
    :goto_5
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_a
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    iget-object v4, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_b
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_9

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-static {p1, v2, p2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    .line 186
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda2findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_e

    goto :goto_6

    :cond_e
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->name:Ljava/lang/CharSequence;

    invoke-static {p1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v2}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object p1

    :goto_6
    iput-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    .line 192
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->option:Ljava/lang/Object;

    :try_start_c
    check-cast p1, Lgnu/kawa/slib/option$Mntype;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_8

    invoke-static {p1}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_f

    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_7

    :cond_f
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_10

    .line 194
    :goto_7
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn20:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 201
    :cond_10
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn21:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :catch_8
    move-exception p2

    .line 192
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "option-required-arg?"

    invoke-direct {v0, p2, v1, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_9
    move-exception p1

    .line 185
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, p2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 209
    :cond_11
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_d
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_e

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, p2, :cond_12

    const/4 p1, 0x1

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_13

    sget-object p1, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v2, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_e
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_b

    invoke-static {v2, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {p1, v2}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_9

    :catch_b
    move-exception p1

    .line 210
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, v4, p2, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_13
    if-eqz p1, :cond_14

    .line 212
    :goto_9
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_f
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_d

    iget-object v2, v1, Lgnu/kawa/slib/srfi37$frame3;->arg:Ljava/lang/Object;

    :try_start_10
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_c

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 213
    sget-object p2, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    iget-object v0, v1, Lgnu/kawa/slib/srfi37$frame3;->args:Ljava/lang/Object;

    iget-object v1, v1, Lgnu/kawa/slib/srfi37$frame3;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, p2, p1, v0, v1}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_a

    :catch_c
    move-exception p1

    .line 212
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, p2, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_d
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v5, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 215
    :cond_14
    iget-object p1, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    iget-object p2, v1, Lgnu/kawa/slib/srfi37$frame3;->lambda$Fn24:Lgnu/expr/ModuleMethod;

    invoke-static {p1, p2}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1

    :catch_e
    move-exception v1

    .line 209
    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_f
    move-exception v1

    .line 181
    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_10
    move-exception v1

    .line 147
    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method
