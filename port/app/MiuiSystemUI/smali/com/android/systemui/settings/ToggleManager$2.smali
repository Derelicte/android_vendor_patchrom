.class Lcom/android/systemui/settings/ToggleManager$2;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$2;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$2;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mToggleOrderChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$200(Lcom/android/systemui/settings/ToggleManager;)Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleManager$2;->this$0:Lcom/android/systemui/settings/ToggleManager;

    #getter for: Lcom/android/systemui/settings/ToggleManager;->mToggleOrderChangedListener:Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleManager;->access$200(Lcom/android/systemui/settings/ToggleManager;)Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/settings/ToggleManager$OnToggleOrderChangedListener;->OnToggleOrderChanged()V

    .line 497
    :cond_0
    return-void
.end method
