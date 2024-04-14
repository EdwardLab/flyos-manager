.class public final enum Lcom/google/appinventor/components/runtime/util/FileAccessMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/util/FileAccessMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field public static final enum READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field public static final enum WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/FileAccessMode;


# instance fields
.field private final GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v1, "READ"

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v6, "APPEND"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v5}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v7

    .line 13
    sput-object v5, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .locals 1

    .line 13
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/FileAccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-object v0
.end method


# virtual methods
.method public final getPermission()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->GqEao9b9YWjqJfm0U8G9R1Onjg5BiUMTCoMqRIVO602C1plqYKUzgjm5B5hvlTms:Ljava/lang/String;

    return-object v0
.end method
