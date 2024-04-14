.class public Lgnu/expr/ModuleExp;
.super Lgnu/expr/LambdaExp;
.source "ModuleExp.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EXPORT_SPECIFIED:I = 0x4000

.field public static final IMMEDIATE:I = 0x100000

.field public static final LAZY_DECLARATIONS:I = 0x80000

.field public static final NONSTATIC_SPECIFIED:I = 0x10000

.field public static final STATIC_RUN_SPECIFIED:I = 0x40000

.field public static final STATIC_SPECIFIED:I = 0x8000

.field public static final SUPERTYPE_SPECIFIED:I = 0x20000

.field public static alwaysCompile:Z = true

.field public static compilerAvailable:Z = true

.field public static dumpZipPrefix:Ljava/lang/String; = null

.field public static interactiveCounter:I = 0x0

.field static lastZipCounter:I = 0x0

.field public static neverCompile:Z = false


# instance fields
.field info:Lgnu/expr/ModuleInfo;

.field interfaces:[Lgnu/bytecode/ClassType;

.field superType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    return-void
.end method

.method public static final evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 197
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 198
    invoke-static {p0, p2, p3, p4}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 201
    :cond_0
    invoke-static {p0, p1, v1, v0, p2}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 215
    iget-object v1, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v1, v0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 216
    invoke-static {p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object p0

    .line 217
    invoke-static {p1}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v1

    .line 218
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 227
    sget-boolean v3, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "alwaysCompile and neverCompile are both true!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_1
    :goto_0
    sget-boolean v3, Lgnu/expr/ModuleExp;->neverCompile:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 232
    iput-boolean v4, p1, Lgnu/expr/Compilation;->mustCompile:Z

    :cond_2
    const/4 v3, 0x6

    const/4 v5, 0x0

    .line 237
    :try_start_0
    invoke-virtual {p1, v3}, Lgnu/expr/Compilation;->process(I)V

    .line 238
    iget-object v3, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    const/16 v3, 0x14

    if-eqz p3, :cond_3

    .line 240
    invoke-virtual {v2, p3, v3}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v6, :cond_4

    .line 285
    :goto_1
    invoke-static {p0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-object v5

    .line 247
    :cond_4
    :try_start_1
    iget-boolean v6, p1, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v6, :cond_6

    .line 250
    sget-boolean p1, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[Evaluating final module \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p3}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    const/16 p1, 0x5d

    .line 254
    invoke-virtual {p3, p1}, Lgnu/mapping/OutPort;->println(C)V

    .line 255
    invoke-virtual {p3}, Lgnu/mapping/OutPort;->flush()V

    .line 257
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 285
    invoke-static {p0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-object p1

    .line 261
    :cond_6
    :try_start_2
    invoke-static {p1, p2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez p1, :cond_7

    .line 285
    invoke-static {p0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-object v5

    .line 266
    :cond_7
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    .line 267
    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-object v6, v5

    :catchall_1
    move-object p2, v5

    .line 275
    :goto_2
    :try_start_5
    iput-object v5, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 276
    iput-object v5, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    if-eqz p3, :cond_8

    .line 277
    invoke-virtual {v2, p3, v3}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 279
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 285
    invoke-static {p0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    if-eqz p2, :cond_9

    .line 288
    invoke-virtual {p2, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    return-object p1

    .line 285
    :cond_a
    invoke-static {p0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    if-eqz p2, :cond_b

    .line 288
    invoke-virtual {p2, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    return-object p1

    :catchall_2
    move-exception p1

    move-object v5, p2

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v6, v5

    .line 285
    :goto_4
    invoke-static {p0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    if-eqz v5, :cond_c

    .line 288
    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_c
    throw p1
.end method

.method public static final evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 297
    invoke-static {p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v0

    .line 302
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p4, v1, :cond_0

    .line 304
    iget-object p0, p3, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto/16 :goto_5

    .line 308
    :cond_0
    instance-of v1, p4, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 309
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v1

    check-cast p4, Ljava/lang/Class;

    invoke-virtual {v1, p4}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    .line 311
    :cond_1
    instance-of v1, p4, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 313
    instance-of v1, p4, Lgnu/expr/ModuleBody;

    if-eqz v1, :cond_2

    .line 315
    move-object v1, p4

    check-cast v1, Lgnu/expr/ModuleBody;

    .line 316
    iget-boolean v2, v1, Lgnu/expr/ModuleBody;->runDone:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 318
    iput-boolean v2, v1, Lgnu/expr/ModuleBody;->runDone:Z

    .line 319
    invoke-virtual {v1, p1}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 323
    :cond_2
    move-object v1, p4

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 327
    invoke-static {p4, p2, p0}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    goto/16 :goto_5

    .line 331
    :cond_4
    invoke-virtual {p3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_e

    .line 334
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p4

    .line 335
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_d

    if-nez p4, :cond_5

    goto/16 :goto_4

    .line 337
    :cond_5
    iget-object v1, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 338
    instance-of v2, p4, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_6

    check-cast p4, Lgnu/mapping/Symbol;

    goto :goto_2

    :cond_6
    const-string v2, ""

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p4

    .line 340
    :goto_2
    invoke-virtual {p2, p3}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v2

    .line 341
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 346
    iget-object v4, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    .line 349
    instance-of v1, v3, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_7

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v3, v1, :cond_7

    .line 351
    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 354
    :cond_7
    iget-object v1, p3, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 355
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-nez v4, :cond_8

    .line 356
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_3

    .line 357
    :cond_8
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_9

    instance-of v3, v3, Lgnu/expr/ReferenceExp;

    if-nez v3, :cond_a

    .line 358
    :cond_9
    invoke-virtual {p3, v5}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 360
    :cond_a
    :goto_3
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 361
    check-cast v1, Lgnu/mapping/Location;

    invoke-virtual {p0, p4, v2, v1}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_4

    .line 363
    :cond_b
    invoke-virtual {p0, p4, v2, v1}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 367
    :cond_c
    new-instance v3, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 371
    invoke-virtual {p0, p4, v2, v3}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 372
    invoke-virtual {p3, v5}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 332
    :cond_d
    :goto_4
    invoke-virtual {p3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p3

    goto/16 :goto_1

    .line 383
    :cond_e
    :goto_5
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 389
    throw p0
.end method

.method public static evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    .line 51
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 57
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 60
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    if-nez p1, :cond_1

    .line 62
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object p1

    .line 63
    :cond_1
    invoke-virtual {v1, p1}, Lgnu/bytecode/ArrayClassLoader;->setResourceContext(Ljava/net/URL;)V

    .line 66
    sget-object p1, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 68
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    sget p1, Lgnu/expr/ModuleExp;->lastZipCounter:I

    add-int/2addr p1, v3

    sput p1, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 71
    sget v5, Lgnu/expr/ModuleExp;->interactiveCounter:I

    if-le v5, p1, :cond_2

    .line 72
    sput v5, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 73
    :cond_2
    sget p1, Lgnu/expr/ModuleExp;->lastZipCounter:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ".zip"

    .line 74
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 80
    :goto_1
    iget v6, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v5, v6, :cond_5

    .line 82
    iget-object v6, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v6, v6, v5

    .line 83
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v6

    .line 85
    invoke-virtual {v1, v7, v6}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    if-eqz v4, :cond_4

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".class"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    new-instance v8, Ljava/util/zip/ZipEntry;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 92
    array-length v7, v6

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    .line 94
    invoke-virtual {v7, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 95
    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 96
    invoke-virtual {v8, p1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 97
    invoke-virtual {v4, v8}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    invoke-virtual {v4, v6}, Ljava/util/zip/ZipOutputStream;->write([B)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 103
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_6
    move-object v4, v1

    .line 116
    :goto_2
    invoke-virtual {v4}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    instance-of v5, v5, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v5, :cond_7

    .line 117
    invoke-virtual {v4}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ArrayClassLoader;

    goto :goto_2

    :cond_7
    move-object v6, v2

    const/4 v5, 0x0

    .line 118
    :goto_3
    iget v7, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v5, v7, :cond_a

    .line 120
    iget-object v7, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v7, v7, v5

    .line 121
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 122
    invoke-virtual {v7, v8}, Lgnu/bytecode/ClassType;->setReflectClass(Ljava/lang/Class;)V

    .line 123
    invoke-virtual {v7, v3}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    if-nez v5, :cond_8

    move-object v6, v8

    goto :goto_4

    :cond_8
    if-eq v4, v1, :cond_9

    .line 131
    invoke-virtual {v4, v8}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 134
    :cond_a
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 135
    invoke-virtual {v1, v6}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 136
    invoke-virtual {p0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 137
    iget v3, v1, Lgnu/expr/ModuleInfo;->numDependencies:I

    :goto_5
    if-ge p1, v3, :cond_c

    .line 141
    iget-object v4, v1, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v4, v4, p1

    .line 142
    invoke-virtual {v4}, Lgnu/expr/ModuleInfo;->getModuleClassRaw()Ljava/lang/Class;

    move-result-object v5

    if-nez v5, :cond_b

    .line 144
    iget-object v4, v4, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-static {v4, v2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    move-result-object v5

    .line 145
    :cond_b
    iget-object v4, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    invoke-virtual {v4, v5}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_c
    return-object v6

    :catchall_0
    move-exception p1

    .line 160
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p0

    const/16 v1, 0x66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal compile error - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance p0, Lgnu/text/SyntaxException;

    invoke-direct {p0, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p0

    :catch_0
    move-exception p0

    .line 156
    new-instance p1, Lgnu/mapping/WrappedException;

    const-string v0, "class not found in lambda eval"

    invoke-direct {p1, v0, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 152
    new-instance p1, Lgnu/mapping/WrappedException;

    const-string v0, "I/O error in lambda eval"

    invoke-direct {p1, v0, p0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static mustAlwaysCompile()V
    .locals 1

    const/4 v0, 0x1

    .line 186
    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    const/4 v0, 0x0

    .line 187
    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    return-void
.end method

.method public static mustNeverCompile()V
    .locals 2

    const/4 v0, 0x0

    .line 180
    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    const/4 v1, 0x1

    .line 181
    sput-boolean v1, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 182
    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    return-void
.end method


# virtual methods
.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 1

    .line 426
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 427
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->allocFrame(Lgnu/expr/Compilation;)V

    return-void
.end method

.method allocFields(Lgnu/expr/Compilation;)V
    .locals 9

    .line 440
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x6

    const-wide/32 v4, 0x10000

    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_1

    goto :goto_1

    .line 445
    :cond_1
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {v0, p1, v1}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 441
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_b

    .line 454
    iget-object v6, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_4

    goto :goto_4

    .line 456
    :cond_4
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    .line 457
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v7

    if-nez v7, :cond_5

    const-wide/16 v7, 0x4000

    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    .line 463
    :cond_5
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    .line 465
    :cond_6
    instance-of v7, v6, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_7

    instance-of v7, v6, Lgnu/expr/ModuleExp;

    if-nez v7, :cond_7

    instance-of v7, v6, Lgnu/expr/ClassExp;

    if-nez v7, :cond_7

    .line 469
    check-cast v6, Lgnu/expr/LambdaExp;

    invoke-virtual {v6, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto :goto_4

    .line 473
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move-object v6, v1

    :cond_9
    :goto_3
    invoke-virtual {v0, p1, v6}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 452
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_2

    :cond_b
    return-void
.end method

.method public classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 5

    .line 532
    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    .line 533
    iget-object p1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    return-object p1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 542
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "$unnamed_input_file$"

    goto :goto_1

    .line 546
    :cond_2
    iget-object v1, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v3, "/dev/stdin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 554
    :cond_3
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    .line 555
    invoke-virtual {v2}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    .line 556
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v3, 0x0

    .line 558
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 548
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "$stdin$"

    .line 562
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 563
    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 564
    :cond_6
    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lgnu/text/Path;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_9

    const-string v2, "file.separator"

    .line 572
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "./"

    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    const-string v2, "."

    .line 575
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 579
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_2
    new-instance v1, Lgnu/bytecode/ClassType;

    invoke-direct {v1, v0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 582
    iget-object v2, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v2, p0, :cond_b

    .line 584
    iget-object v2, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v2, :cond_a

    .line 585
    iput-object v1, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_3

    .line 586
    :cond_a
    iget-object v2, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x65

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent main class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - old name: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_b
    :goto_3
    return-object v1
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 1

    .line 519
    monitor-enter p0

    const/high16 v0, 0x80000

    .line 521
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    .line 523
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v0, p0, Lgnu/expr/ModuleExp;->decls:Lgnu/expr/Declaration;

    return-object v0

    :catchall_0
    move-exception v0

    .line 523
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 1

    .line 402
    iget-object v0, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuperType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 400
    iget-object v0, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isStatic()Z
    .locals 1

    const v0, 0x8000

    .line 409
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    if-gez v0, :cond_0

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    const-string v0, "(Module/"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 487
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x2f

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 494
    :cond_0
    iget v0, p0, Lgnu/expr/ModuleExp;->id:I

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 495
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 496
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    const/4 v0, 0x0

    const-string v2, "("

    .line 497
    invoke-virtual {p1, v2, v0, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "Declarations:"

    .line 501
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 505
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 502
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 510
    iget-object v0, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    if-nez v0, :cond_2

    const-string v0, "<null body>"

    .line 511
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_2
    iget-object v0, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 514
    :goto_1
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

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

    .line 615
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    .line 616
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 618
    check-cast p1, Lgnu/bytecode/ClassType;

    iput-object p1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 619
    iget-object p1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 623
    :goto_0
    iget p1, p0, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lgnu/expr/ModuleExp;->flags:I

    return-void
.end method

.method public final setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setSuperType(Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public staticInitRun()Z
    .locals 2

    .line 419
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 482
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 607
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_1
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
