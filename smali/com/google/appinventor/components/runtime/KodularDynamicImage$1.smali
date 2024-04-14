.class final Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularDynamicImage;->imagePermissionHelper(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatImageView;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

.field private synthetic nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 133
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->access$000(Lcom/google/appinventor/components/runtime/KodularDynamicImage;Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularDynamicImage;->access$100(Lcom/google/appinventor/components/runtime/KodularDynamicImage;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicImage;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicImage$1;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
