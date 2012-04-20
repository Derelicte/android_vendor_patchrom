.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# instance fields
.field private mController:Lcom/android/browser/Controller;

.field private mUi:Lcom/android/browser/UI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getController()Lcom/android/browser/Controller;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 243
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 244
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 237
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 238
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onConfgurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 136
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 137
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 57
    const-string v3, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " onStart, has state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    const-string v2, "false"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 83
    :goto_1
    return-void

    .line 57
    :cond_0
    const-string v2, "true"

    goto :goto_0

    .line 68
    :cond_1
    new-instance v3, Lcom/android/browser/MiuiController;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-direct {v3, p0, v2}, Lcom/android/browser/MiuiController;-><init>(Landroid/app/Activity;Z)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 69
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v1

    .line 70
    .local v1, xlarge:Z
    if-eqz v1, :cond_4

    .line 71
    new-instance v2, Lcom/android/browser/XLargeUi;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v2, p0, v3}, Lcom/android/browser/XLargeUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 75
    :goto_3
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    invoke-virtual {v2, v3}, Lcom/android/browser/Controller;->setUi(Lcom/android/browser/UI;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, state:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 79
    move-object p1, v0

    .line 82
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/browser/Controller;->start(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1

    .line 68
    .end local v0           #state:Landroid/os/Bundle;
    .end local v1           #xlarge:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 73
    .restart local v1       #xlarge:Z
    :cond_4
    new-instance v2, Lcom/android/browser/MiuiPhoneUi;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-direct {v2, p0, v3}, Lcom/android/browser/MiuiPhoneUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/Controller;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 209
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 188
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onDestroy: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onDestroy()V

    .line 169
    :cond_0
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mUi:Lcom/android/browser/UI;

    .line 170
    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    .line 171
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 182
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onLowMemory()V

    .line 183
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/Controller;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 96
    const-string v0, "--restart--"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1, v0}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/browser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->handleNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onPause()V

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 194
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onResume: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onResume()V

    .line 118
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 147
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onSaveInstanceState: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, p1}, Lcom/android/browser/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->onSearchRequested()Z

    move-result v0

    return v0
.end method
