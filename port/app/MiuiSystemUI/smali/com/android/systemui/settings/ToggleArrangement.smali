.class public Lcom/android/systemui/settings/ToggleArrangement;
.super Landroid/app/Activity;
.source "ToggleArrangement.java"

# interfaces
.implements Landroid/widget/SortableListView$OnOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

.field private mFixedDividerPosition:I

.field private mListView:Landroid/widget/SortableListView;

.field private mToggleIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleManager:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    .line 181
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/ToggleArrangement;)Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/ToggleArrangement;)Lcom/android/systemui/settings/ToggleManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/ToggleArrangement;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/ToggleArrangement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/ToggleArrangement;)Landroid/widget/SortableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    return-object v0
.end method


# virtual methods
.method public OnOrderChanged(II)V
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 162
    .local v1, toggle:I
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    :goto_0
    iget v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, -0x1

    .line 173
    .local v0, delta:I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    .end local v0           #delta:I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 178
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    .line 179
    return-void

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleArrangement;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 47
    :cond_0
    new-instance v1, Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/ToggleManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    .line 48
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    .line 49
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->getDividerFixedPosition(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    .line 51
    new-instance v1, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;-><init>(Lcom/android/systemui/settings/ToggleArrangement;Lcom/android/systemui/settings/ToggleArrangement$1;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    new-instance v2, Lcom/android/systemui/settings/ToggleArrangement$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleArrangement$1;-><init>(Lcom/android/systemui/settings/ToggleArrangement;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleManager;->setOnToggleChangedListener(Lcom/android/systemui/settings/ToggleManager$OnToggleChangedListener;)V

    .line 60
    new-instance v1, Landroid/widget/SortableListView;

    invoke-direct {v1, p0}, Landroid/widget/SortableListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    .line 61
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1, v3}, Landroid/widget/SortableListView;->setDividerHeight(I)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1, v5}, Landroid/widget/SortableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/settings/ToggleArrangement;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    invoke-virtual {v1, p0}, Landroid/widget/SortableListView;->setOnOrderChangedListener(Landroid/widget/SortableListView$OnOrderChangedListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v2, Lcom/android/systemui/settings/ToggleArrangement$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleArrangement$2;-><init>(Lcom/android/systemui/settings/ToggleArrangement;)V

    invoke-virtual {v1, v2}, Landroid/widget/SortableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    new-instance v2, Lcom/android/systemui/settings/ToggleArrangement$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/settings/ToggleArrangement$3;-><init>(Lcom/android/systemui/settings/ToggleArrangement;)V

    invoke-virtual {v1, v2}, Landroid/widget/SortableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleArrangement;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.settings.EXTRA_LOCATE_DIVIDER"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SortableListView;->setSelection(I)V

    .line 93
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 123
    const v2, 0x7f0a00bc

    invoke-interface {p1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 124
    .local v0, resetItem:Landroid/view/MenuItem;
    const v2, 0x7f02002c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    const/4 v2, 0x1

    const v3, 0x7f0a00b3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 127
    .local v1, settingItem:Landroid/view/MenuItem;
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleManager;->onDestroy()V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 137
    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    iget-object v3, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/systemui/settings/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 139
    iget-object v2, p0, Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 143
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.settings.StyleSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleArrangement;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleArrangement;->finish()V

    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->getDividerFixedPosition(Landroid/content/Context;)I

    move-result v0

    .line 100
    .local v0, position:I
    iget v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    if-eq v0, v1, :cond_0

    .line 101
    invoke-static {p0}, Lcom/android/systemui/settings/ToggleManager;->getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;

    .line 102
    iput v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleArrangement;->mAdapter:Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->notifyDataSetInvalidated()V

    .line 105
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement;->mToggleManager:Lcom/android/systemui/settings/ToggleManager;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleManager;->refreshAll()V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 119
    return-void
.end method
