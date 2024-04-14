.class public Lkawa/standard/with_compile_options;
.super Lkawa/lang/Syntax;
.source "with_compile_options.java"


# static fields
.field public static final with_compile_options:Lkawa/standard/with_compile_options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/with_compile_options;

    invoke-direct {v0}, Lkawa/standard/with_compile_options;-><init>()V

    sput-object v0, Lkawa/standard/with_compile_options;->with_compile_options:Lkawa/standard/with_compile_options;

    const-string v1, "with-compile-options"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/with_compile_options;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 10

    .line 34
    iget-object v0, p3, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 38
    :goto_0
    instance-of v4, p0, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 40
    move-object v3, p0

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 41
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 43
    :cond_0
    instance-of v4, p0, Lgnu/lists/Pair;

    const/16 v5, 0x65

    if-nez v4, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    move-object v4, p0

    check-cast v4, Lgnu/lists/Pair;

    .line 46
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 47
    instance-of v7, v6, Lgnu/expr/Keyword;

    if-nez v7, :cond_3

    :goto_1
    if-nez v2, :cond_2

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no option keyword in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lkawa/lang/Syntax;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v5, p1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 99
    :cond_2
    invoke-static {p0, v3}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 49
    :cond_3
    check-cast v6, Lgnu/expr/Keyword;

    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    .line 51
    invoke-virtual {p3, v4}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 54
    :try_start_0
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 55
    :goto_2
    instance-of v7, v4, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_4

    .line 57
    move-object v3, v4

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 58
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 60
    :cond_4
    instance-of v7, v4, Lgnu/lists/Pair;

    if-nez v7, :cond_5

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "keyword "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not followed by value"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v5, p0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 63
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    return-object p0

    .line 65
    :cond_5
    :try_start_1
    check-cast v4, Lgnu/lists/Pair;

    .line 66
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 67
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-virtual {v0, p0}, Lgnu/text/Options;->getLocal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 69
    invoke-virtual {v0, p0}, Lgnu/text/Options;->getInfo(Ljava/lang/String;)Lgnu/text/Options$OptionInfo;

    move-result-object v9

    if-nez v9, :cond_7

    const/16 v5, 0x77

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown compile option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v5, p0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_6
    :goto_3
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_5

    .line 74
    :cond_7
    :try_start_2
    instance-of v9, v7, Lgnu/lists/FString;

    if-eqz v9, :cond_8

    .line 75
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 76
    :cond_8
    instance-of v9, v7, Ljava/lang/Boolean;

    if-nez v9, :cond_a

    instance-of v9, v7, Ljava/lang/Number;

    if-eqz v9, :cond_9

    goto :goto_4

    .line 82
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid literal value for key "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v5, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move-object v7, v1

    .line 84
    :cond_a
    :goto_4
    invoke-virtual {p3}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    invoke-virtual {v0, p0, v7, v5}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/Object;Lgnu/text/SourceMessages;)V

    if-eqz p1, :cond_6

    .line 87
    invoke-virtual {p1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p1, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_5
    move-object p0, v4

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 94
    invoke-virtual {p3, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .line 106
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 108
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Stack;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    .line 112
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 113
    iget-object v1, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v1, p1}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 118
    invoke-static {p1, v0, p0, p2}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 123
    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lgnu/expr/BeginExp;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lgnu/expr/BeginExp;

    goto :goto_1

    .line 128
    :cond_1
    new-instance v1, Lgnu/expr/BeginExp;

    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    move-object v0, v1

    .line 129
    :goto_1
    invoke-virtual {v0, p1}, Lgnu/expr/BeginExp;->setCompileOptions(Ljava/util/Vector;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object p2, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {p2, p1}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p2, p2, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {p2, p1}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    throw v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 16
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0, p0, p3}, Lkawa/standard/with_compile_options;->getOptions(Ljava/lang/Object;Ljava/util/Stack;Lkawa/lang/Syntax;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v1

    .line 17
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p3, v1, p2, p1}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p3, v1, p2, v2}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object p2

    .line 25
    new-instance v1, Lgnu/lists/Pair;

    invoke-direct {v1, v0, p2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    iget-object p2, p3, Lkawa/lang/Translator;->currentOptions:Lgnu/text/Options;

    invoke-virtual {p2, v0}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 27
    iget-object p2, p3, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3, v1}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
