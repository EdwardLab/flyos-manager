.class public Lkawa/lang/SyntaxRules;
.super Lgnu/mapping/Procedure1;
.source "SyntaxRules.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field literal_identifiers:[Ljava/lang/Object;

.field maxVars:I

.field rules:[Lkawa/lang/SyntaxRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    .line 35
    invoke-direct/range {p0 .. p0}, Lgnu/mapping/Procedure1;-><init>()V

    const/4 v9, 0x0

    .line 18
    iput v9, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    .line 36
    iput-object v0, v1, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 37
    invoke-static/range {p2 .. p2}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "missing or invalid syntax-rules"

    .line 41
    invoke-virtual {v8, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    move v10, v2

    .line 43
    :goto_0
    new-array v2, v10, [Lkawa/lang/SyntaxRule;

    iput-object v2, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v11, 0x0

    move-object/from16 v2, p2

    :goto_1
    if-ge v11, v10, :cond_9

    move-object v12, v3

    .line 49
    :goto_2
    instance-of v3, v2, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_1

    .line 51
    move-object v12, v2

    check-cast v12, Lkawa/lang/SyntaxForm;

    .line 52
    invoke-interface {v12}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 54
    :cond_1
    move-object v13, v2

    check-cast v13, Lgnu/lists/Pair;

    .line 58
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v12

    .line 59
    :goto_3
    instance-of v4, v2, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_2

    .line 61
    move-object v3, v2

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 62
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 64
    :cond_2
    instance-of v4, v2, Lgnu/lists/Pair;

    const-string v5, "\'th syntax rule"

    if-nez v4, :cond_3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing pattern in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-void

    .line 71
    :cond_3
    check-cast v2, Lgnu/lists/Pair;

    .line 72
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 74
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 75
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v15

    .line 76
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v7

    .line 82
    :try_start_0
    invoke-virtual {v8, v2}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v3

    .line 84
    :goto_4
    instance-of v9, v2, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_4

    .line 86
    move-object v6, v2

    check-cast v6, Lkawa/lang/SyntaxForm;

    .line 87
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 89
    :cond_4
    instance-of v9, v2, Lgnu/lists/Pair;

    if-nez v9, :cond_5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing template in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    invoke-virtual {v8, v14, v15, v7}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    .line 94
    :cond_5
    :try_start_1
    check-cast v2, Lgnu/lists/Pair;

    .line 95
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 p2, v3

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v3, :cond_6

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "junk after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    invoke-virtual {v8, v14, v15, v7}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    .line 100
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 102
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->push(Lkawa/lang/Translator;)Lkawa/lang/PatternScope;

    move-result-object v2

    .line 103
    invoke-virtual {v8, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    move-object/from16 v5, p2

    .line 105
    :goto_5
    instance-of v2, v4, Lkawa/lang/SyntaxForm;

    if-eqz v2, :cond_7

    .line 107
    move-object v5, v4

    check-cast v5, Lkawa/lang/SyntaxForm;

    .line 108
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    .line 111
    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    instance-of v2, v4, Lgnu/lists/Pair;

    if-eqz v2, :cond_8

    .line 118
    move-object v2, v4

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    const/16 v16, 0x0

    aput-object v2, v0, v16

    .line 120
    check-cast v4, Lgnu/lists/Pair;

    const/16 v2, 0xc

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v2, 0x18

    .line 122
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 131
    new-instance v2, Lkawa/lang/SyntaxPattern;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 p2, v2

    move-object/from16 v2, p2

    move-object v0, v6

    move-object/from16 v6, p1

    move/from16 v17, v10

    move v10, v7

    move-object/from16 v7, p3

    :try_start_3
    invoke-direct/range {v2 .. v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/StringBuffer;Ljava/lang/Object;Lkawa/lang/SyntaxForm;[Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 134
    iget-object v2, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    new-instance v3, Lkawa/lang/SyntaxRule;

    move-object/from16 v4, p2

    invoke-direct {v3, v4, v9, v0, v8}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V

    aput-object v3, v2, v11

    .line 137
    invoke-static/range {p3 .. p3}, Lkawa/lang/PatternScope;->pop(Lkawa/lang/Translator;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->pop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    invoke-virtual {v8, v14, v15, v10}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    add-int/lit8 v11, v11, 0x1

    .line 47
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v3, v12

    move/from16 v10, v17

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_8
    move v10, v7

    :try_start_4
    const-string v0, "pattern does not start with name"

    .line 128
    invoke-virtual {v8, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    invoke-virtual {v8, v14, v15, v10}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move v10, v7

    :goto_6
    invoke-virtual {v8, v14, v15, v10}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw v0

    .line 147
    :cond_9
    iget-object v0, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    array-length v0, v0

    :cond_a
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 149
    iget-object v2, v1, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    aget-object v2, v2, v0

    iget-object v2, v2, Lkawa/lang/SyntaxRule;->patternNesting:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 150
    iget v3, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    if-le v2, v3, :cond_a

    .line 151
    iput v2, v1, Lkawa/lang/SyntaxRules;->maxVars:I

    goto :goto_7

    :cond_b
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 28
    iput-object p1, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 30
    iput p3, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 165
    instance-of v0, p1, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Lkawa/lang/SyntaxForm;

    .line 168
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 169
    invoke-virtual {v0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v1

    .line 170
    invoke-interface {p1}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 173
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw p1

    .line 181
    :cond_0
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-virtual {p0, p1, v0}, Lkawa/lang/SyntaxRules;->expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public expand(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6

    .line 206
    iget v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    invoke-virtual {p2}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v1

    check-cast v1, Lkawa/lang/Macro;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 212
    :goto_0
    iget-object v4, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 214
    aget-object v4, v4, v3

    if-nez v4, :cond_0

    .line 216
    new-instance p1, Lgnu/expr/ErrorExp;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error defining "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 218
    :cond_0
    iget-object v5, v4, Lkawa/lang/SyntaxRule;->pattern:Lkawa/lang/SyntaxPattern;

    .line 219
    invoke-virtual {v5, p1, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    invoke-static {p2}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object p1

    invoke-virtual {v4, v0, p2, p1}, Lkawa/lang/SyntaxRule;->execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no matching syntax-rule for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 2

    const-string v0, "#<macro "

    .line 278
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    const/16 v0, 0x3e

    .line 280
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    .line 298
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkawa/lang/SyntaxRule;

    check-cast v0, [Lkawa/lang/SyntaxRule;

    iput-object v0, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    .line 299
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->literal_identifiers:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lkawa/lang/SyntaxRules;->rules:[Lkawa/lang/SyntaxRule;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 291
    iget v0, p0, Lkawa/lang/SyntaxRules;->maxVars:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
