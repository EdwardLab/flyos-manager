.class public Lcom/google/appinventor/components/runtime/util/CustomMediaController;
.super Landroid/widget/MediaController;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xbb8

    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    return-void
.end method


# virtual methods
.method public addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "CustomMediaController.addTo"

    const-string p2, "MediaController not available in fullscreen."

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public hide()V
    .locals 1

    .line 105
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    const/4 v0, 0x4

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 116
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;

    if-ne p1, p2, :cond_0

    .line 117
    iget p1, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->show(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/view/View;

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 60
    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    return-void
.end method

.method public show(I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setVisibility(I)V

    .line 50
    invoke-super {p0, p1}, Landroid/widget/MediaController;->show(I)V

    return-void
.end method
