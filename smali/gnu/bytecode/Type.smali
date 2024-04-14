.class public abstract Lgnu/bytecode/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/bytecode/Type$ClassToTypeMap;
    }
.end annotation


# static fields
.field public static final booleanType:Lgnu/bytecode/PrimType;

.field public static final booleanValue_method:Lgnu/bytecode/Method;

.field public static final boolean_ctype:Lgnu/bytecode/ClassType;

.field public static final boolean_type:Lgnu/bytecode/PrimType;

.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final byte_type:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/bytecode/PrimType;

.field public static final char_type:Lgnu/bytecode/PrimType;

.field public static final clone_method:Lgnu/bytecode/Method;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final doubleValue_method:Lgnu/bytecode/Method;

.field public static final double_type:Lgnu/bytecode/PrimType;

.field public static final errorType:Lgnu/bytecode/ObjectType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final floatValue_method:Lgnu/bytecode/Method;

.field public static final float_type:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final intValue_method:Lgnu/bytecode/Method;

.field public static final int_type:Lgnu/bytecode/PrimType;

.field public static final java_lang_Class_type:Lgnu/bytecode/ClassType;

.field public static final javalangBooleanType:Lgnu/bytecode/ClassType;

.field public static final javalangClassType:Lgnu/bytecode/ClassType;

.field public static final javalangNumberType:Lgnu/bytecode/ClassType;

.field public static final javalangObjectType:Lgnu/bytecode/ClassType;

.field public static javalangStringType:Lgnu/bytecode/ClassType;

.field public static final javalangThrowableType:Lgnu/bytecode/ClassType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final longValue_method:Lgnu/bytecode/Method;

.field public static final long_type:Lgnu/bytecode/PrimType;

.field static mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

.field static mapNameToType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final neverReturnsType:Lgnu/bytecode/PrimType;

.field public static final nullType:Lgnu/bytecode/ObjectType;

.field public static final number_type:Lgnu/bytecode/ClassType;

.field public static final objectType:Lgnu/bytecode/ClassType;

.field public static final pointer_type:Lgnu/bytecode/ClassType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final short_type:Lgnu/bytecode/PrimType;

.field public static final string_type:Lgnu/bytecode/ClassType;

.field public static final throwable_type:Lgnu/bytecode/ClassType;

.field public static final toStringType:Lgnu/bytecode/ClassType;

.field public static final toString_method:Lgnu/bytecode/Method;

.field public static final tostring_type:Lgnu/bytecode/ClassType;

.field public static final typeArray0:[Lgnu/bytecode/Type;

.field public static final voidType:Lgnu/bytecode/PrimType;

.field public static final void_type:Lgnu/bytecode/PrimType;


# instance fields
.field array_type:Lgnu/bytecode/ArrayType;

.field protected reflectClass:Ljava/lang/Class;

.field signature:Ljava/lang/String;

.field size:I

.field this_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 487
    new-instance v0, Lgnu/bytecode/PrimType;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    const-string v3, "B"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    .line 489
    new-instance v1, Lgnu/bytecode/PrimType;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v5, "short"

    const-string v6, "S"

    const/4 v7, 0x2

    invoke-direct {v1, v5, v6, v7, v3}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    .line 491
    new-instance v3, Lgnu/bytecode/PrimType;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v8, "int"

    const-string v9, "I"

    const/4 v10, 0x4

    invoke-direct {v3, v8, v9, v10, v6}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 493
    new-instance v6, Lgnu/bytecode/PrimType;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v11, "long"

    const-string v12, "J"

    const/16 v13, 0x8

    invoke-direct {v6, v11, v12, v13, v9}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .line 495
    new-instance v9, Lgnu/bytecode/PrimType;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v14, "float"

    const-string v15, "F"

    invoke-direct {v9, v14, v15, v10, v12}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    .line 497
    new-instance v10, Lgnu/bytecode/PrimType;

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v15, "double"

    const-string v7, "D"

    invoke-direct {v10, v15, v7, v13, v12}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 499
    new-instance v7, Lgnu/bytecode/PrimType;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v13, "boolean"

    move-object/from16 v17, v15

    const-string v15, "Z"

    invoke-direct {v7, v13, v15, v4, v12}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    .line 501
    new-instance v12, Lgnu/bytecode/PrimType;

    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v4, "char"

    move-object/from16 v18, v13

    const-string v13, "C"

    move-object/from16 v19, v14

    const/4 v14, 0x2

    invoke-direct {v12, v4, v13, v14, v15}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    .line 503
    new-instance v13, Lgnu/bytecode/PrimType;

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v15, "void"

    move-object/from16 v16, v4

    const-string v4, "V"

    move-object/from16 v20, v11

    const/4 v11, 0x0

    invoke-direct {v13, v15, v4, v11, v14}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .line 506
    sput-object v0, Lgnu/bytecode/Type;->byte_type:Lgnu/bytecode/PrimType;

    .line 507
    sput-object v1, Lgnu/bytecode/Type;->short_type:Lgnu/bytecode/PrimType;

    .line 508
    sput-object v3, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    .line 509
    sput-object v6, Lgnu/bytecode/Type;->long_type:Lgnu/bytecode/PrimType;

    .line 510
    sput-object v9, Lgnu/bytecode/Type;->float_type:Lgnu/bytecode/PrimType;

    .line 511
    sput-object v10, Lgnu/bytecode/Type;->double_type:Lgnu/bytecode/PrimType;

    .line 512
    sput-object v7, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    .line 513
    sput-object v12, Lgnu/bytecode/Type;->char_type:Lgnu/bytecode/PrimType;

    .line 514
    sput-object v13, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    .line 519
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 523
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v0, Lgnu/bytecode/PrimType;

    invoke-direct {v0, v13}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    const-string v1, "(never-returns)"

    .line 536
    iput-object v1, v0, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    .line 539
    new-instance v0, Lgnu/bytecode/ObjectType;

    const-string v1, "(type of null)"

    invoke-direct {v0, v1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    .line 541
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v1, "(error type)"

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    const-string v0, "java.lang.String"

    .line 543
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 545
    new-instance v1, Lgnu/bytecode/ClassType;

    invoke-direct {v1, v0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    const-string v0, "java.lang.Object"

    .line 548
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    .line 550
    sput-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v2, "java.lang.Boolean"

    .line 551
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    const-string v4, "java.lang.Throwable"

    .line 553
    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    new-array v5, v11, [Lgnu/bytecode/Type;

    .line 555
    sput-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    const-string v8, "toString"

    .line 556
    invoke-virtual {v0, v8, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    sput-object v8, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    const-string v8, "java.lang.Number"

    .line 558
    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    sput-object v8, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    .line 560
    invoke-static {v0}, Lgnu/bytecode/Method;->makeCloneMethod(Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v11

    sput-object v11, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    const-string v11, "intValue"

    const/4 v12, 0x1

    .line 562
    invoke-virtual {v8, v11, v5, v3, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->intValue_method:Lgnu/bytecode/Method;

    const-string v3, "longValue"

    .line 565
    invoke-virtual {v8, v3, v5, v6, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->longValue_method:Lgnu/bytecode/Method;

    const-string v3, "floatValue"

    .line 568
    invoke-virtual {v8, v3, v5, v9, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->floatValue_method:Lgnu/bytecode/Method;

    const-string v3, "doubleValue"

    .line 571
    invoke-virtual {v8, v3, v5, v10, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->doubleValue_method:Lgnu/bytecode/Method;

    const-string v3, "booleanValue"

    .line 574
    invoke-virtual {v2, v3, v5, v7, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->booleanValue_method:Lgnu/bytecode/Method;

    const-string v3, "java.lang.Class"

    .line 577
    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    .line 580
    sput-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 582
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 584
    sput-object v1, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    .line 586
    sput-object v3, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    .line 588
    sput-object v2, Lgnu/bytecode/Type;->boolean_ctype:Lgnu/bytecode/ClassType;

    .line 590
    sput-object v4, Lgnu/bytecode/Type;->throwable_type:Lgnu/bytecode/ClassType;

    .line 592
    sput-object v8, Lgnu/bytecode/Type;->number_type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-object v0, p1, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    iput-object v0, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    iput-object v0, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    .line 164
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    iput v0, p0, Lgnu/bytecode/Type;->size:I

    .line 165
    iget-object p1, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    iput-object p1, p0, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    return-void
.end method

.method public static getType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 3

    .line 79
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 83
    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;

    if-nez v1, :cond_1

    const-string v1, "[]"

    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Lgnu/bytecode/ClassType;

    invoke-direct {v1, p0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 93
    iget v2, v1, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lgnu/bytecode/ClassType;->flags:I

    .line 96
    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isMoreSpecific([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)Z
    .locals 4

    .line 440
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 442
    :cond_0
    array-length v0, p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 444
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidJavaTypeName(Ljava/lang/String;)Z
    .locals 7

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 330
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v2, v0, :cond_5

    .line 334
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    return v1

    :cond_2
    if-eqz v3, :cond_3

    .line 342
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    const/4 v3, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    if-ne v2, v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public static lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1

    .line 64
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 65
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/bytecode/Type;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 2

    .line 376
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-nez p1, :cond_2

    goto :goto_2

    .line 382
    :cond_2
    instance-of v1, p0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_5

    if-ne p0, p1, :cond_3

    return-object p0

    .line 386
    :cond_3
    check-cast p0, Lgnu/bytecode/PrimType;

    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->promotedType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 387
    check-cast p1, Lgnu/bytecode/PrimType;

    invoke-virtual {p1}, Lgnu/bytecode/PrimType;->promotedType()Lgnu/bytecode/Type;

    move-result-object p1

    if-ne p0, p1, :cond_4

    move-object v0, p0

    :cond_4
    return-object v0

    .line 390
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p1

    .line 392
    :cond_6
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 397
    :cond_7
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_b

    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-nez v0, :cond_8

    goto :goto_1

    .line 399
    :cond_8
    check-cast p0, Lgnu/bytecode/ClassType;

    .line 400
    check-cast p1, Lgnu/bytecode/ClassType;

    .line 401
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 404
    :cond_9
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object p0

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0

    .line 402
    :cond_a
    :goto_0
    sget-object p0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object p0

    .line 398
    :cond_b
    :goto_1
    sget-object p0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object p0

    :cond_c
    :goto_2
    return-object v0
.end method

.method public static declared-synchronized make(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 5

    const-class v0, Lgnu/bytecode/Type;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1, p0}, Lgnu/bytecode/Type$ClassToTypeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 120
    monitor-exit v0

    return-object v1

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    goto :goto_3

    .line 124
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    sget-object v2, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 134
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    if-eqz v3, :cond_3

    .line 137
    iget-object v4, v3, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    if-eq v4, p0, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v1, v3

    goto :goto_2

    .line 141
    :cond_3
    :goto_1
    new-instance v3, Lgnu/bytecode/ClassType;

    invoke-direct {v3, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 142
    iget v4, v3, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lgnu/bytecode/ClassType;->flags:I

    .line 144
    sget-object v4, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :goto_3
    :try_start_3
    invoke-static {p0, v1}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 146
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    .line 125
    :cond_4
    new-instance p0, Ljava/lang/Error;

    const-string v1, "internal error - primitive type not found"

    invoke-direct {p0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 234
    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 236
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_2

    add-int/2addr p1, v1

    sub-int/2addr p2, v1

    .line 240
    invoke-static {p0, p1, p2, p3}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    const-string p0, "[]"

    .line 241
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x4c

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    if-le p2, v0, :cond_3

    const/16 v0, 0x3b

    .line 243
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v2, p2, -0x1

    add-int/2addr v2, p1

    if-ne v0, v2, :cond_3

    add-int/2addr p1, v1

    .line 244
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    const/16 p2, 0x2e

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sub-int/2addr p2, p1

    .line 246
    invoke-virtual {p3, p0, p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    :cond_4
    :goto_0
    return-void
.end method

.method public static declared-synchronized registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    .locals 2

    const-class v0, Lgnu/bytecode/Type;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lgnu/bytecode/Type$ClassToTypeMap;

    invoke-direct {v1}, Lgnu/bytecode/Type$ClassToTypeMap;-><init>()V

    sput-object v1, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    .line 108
    :cond_0
    iput-object p0, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 109
    invoke-virtual {v1, p0, p1}, Lgnu/bytecode/Type$ClassToTypeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static signatureLength(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, v0}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static signatureLength(Ljava/lang/String;I)I
    .locals 4

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, p1, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 264
    :cond_1
    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_2
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    const/16 v0, 0x3b

    .line 268
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-lez p0, :cond_3

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, p1

    return v2

    :cond_3
    return v1
.end method

.method public static signatureToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 291
    invoke-static {v2}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 293
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x2

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_5

    if-ge v3, v0, :cond_2

    .line 298
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_2

    const/4 v3, 0x2

    .line 300
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    .line 303
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    const-string p0, "[]"

    .line 306
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 307
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 v5, 0x4c

    if-ne v2, v5, :cond_6

    if-le v0, v4, :cond_6

    const/16 v2, 0x3b

    .line 309
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_6

    .line 310
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static signatureToPrimitive(C)Lgnu/bytecode/PrimType;
    .locals 1

    const/16 v0, 0x46

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 185
    :pswitch_0
    sget-object p0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 184
    :pswitch_1
    sget-object p0, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 183
    :pswitch_2
    sget-object p0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 189
    :cond_0
    sget-object p0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 188
    :cond_1
    sget-object p0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 190
    :cond_2
    sget-object p0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 191
    :cond_3
    sget-object p0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 187
    :cond_4
    sget-object p0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    return-object p0

    .line 186
    :cond_5
    sget-object p0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 2

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0
.end method

.method public static signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 205
    invoke-static {v1}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_3

    add-int/2addr p1, v2

    sub-int/2addr p2, v2

    .line 211
    invoke-static {p0, p1, p2}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_3
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    if-le p2, v1, :cond_4

    const/16 v1, 0x3b

    .line 214
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    sub-int/2addr p2, v2

    add-int/2addr p2, p1

    if-ne v1, p2, :cond_4

    add-int/2addr p1, v2

    .line 215
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    const/16 p2, 0x2e

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method protected static swappedCompareResult(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public abstract coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public abstract compare(Lgnu/bytecode/Type;)I
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 2

    .line 484
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unimplemented emitCoerceFromObject for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 0

    return-void
.end method

.method public emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V
    .locals 0

    .line 473
    invoke-virtual {p1, p2}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 0

    .line 452
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealType()Lgnu/bytecode/Type;
    .locals 0

    return-object p0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 1

    .line 599
    iget-object v0, p0, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 172
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    return v0
.end method

.method public getSizeInWords()I
    .locals 2

    .line 173
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 614
    invoke-virtual {p0}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 615
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isExisting()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isSubtype(Lgnu/bytecode/Type;)Z
    .locals 1

    .line 359
    invoke-virtual {p0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isVoid()Z
    .locals 1

    .line 175
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public promote()Lgnu/bytecode/Type;
    .locals 2

    .line 169
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    return-void
.end method

.method public setReflectClass(Ljava/lang/Class;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
