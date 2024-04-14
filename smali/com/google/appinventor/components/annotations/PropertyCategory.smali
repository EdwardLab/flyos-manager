.class public final enum Lcom/google/appinventor/components/annotations/PropertyCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/annotations/PropertyCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/annotations/PropertyCategory;


# instance fields
.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "BEHAVIOR"

    const/4 v2, 0x0

    const-string v3, "Behavior"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v3, "APPEARANCE"

    const/4 v4, 0x1

    const-string v5, "Appearance"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v5, "DEPRECATED"

    const/4 v6, 0x2

    const-string v7, "Deprecated"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 18
    new-instance v5, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v7, "UNSET"

    const/4 v8, 0x3

    const-string v9, "Unspecified"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 13
    sput-object v7, Lcom/google/appinventor/components/annotations/PropertyCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/annotations/PropertyCategory;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    const-class v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/annotations/PropertyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    return-object v0
.end method
