.class final Lcom/google/appinventor/components/runtime/Form$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->ShowNavBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/View;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

.field private synthetic sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Landroid/view/View;Z)V
    .locals 0

    .line 2973
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/Form$6;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    .line 2976
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Form$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/View;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Form$6;->sR32qIN7Ar1u7i1api4nHQx9ll4d2UKsyYwGlFPHAR6MP73rw39BVQBnLHX3cktp:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->VisibilityHelper(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
