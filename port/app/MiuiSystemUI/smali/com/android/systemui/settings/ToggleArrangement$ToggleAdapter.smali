.class Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToggleArrangement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleArrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleAdapter"
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/settings/ToggleArrangement;


# direct methods
.method private constructor <init>(Lcom/android/systemui/settings/ToggleArrangement;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/settings/ToggleArrangement;Lcom/android/systemui/settings/ToggleArrangement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;-><init>(Lcom/android/systemui/settings/ToggleArrangement;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleArrangement;->access$300(Lcom/android/systemui/settings/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleArrangement;->access$300(Lcom/android/systemui/settings/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleArrangement;->access$300(Lcom/android/systemui/settings/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v6, 0x7f1000b7

    const v5, 0x7f1000b6

    const/4 v9, 0x0

    .line 201
    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 203
    const/4 p2, 0x0

    .line 206
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mToggleIDs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleArrangement;->access$300(Lcom/android/systemui/settings/ToggleArrangement;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 207
    .local v2, id:I
    if-nez v2, :cond_4

    .line 208
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_2

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 210
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030021

    invoke-virtual {v3, v4, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    .line 211
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleArrangement;->access$400(Lcom/android/systemui/settings/ToggleArrangement;)I

    move-result v4

    if-nez v4, :cond_3

    .line 212
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, dragHandle:Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;
    invoke-static {v4}, Lcom/android/systemui/settings/ToggleArrangement;->access$500(Lcom/android/systemui/settings/ToggleArrangement;)Landroid/widget/SortableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .end local v0           #dragHandle:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    .line 237
    :goto_1
    return-object v4

    .line 217
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    const v6, 0x7f0a00ba

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mFixedDividerPosition:I
    invoke-static {v8}, Lcom/android/systemui/settings/ToggleArrangement;->access$400(Lcom/android/systemui/settings/ToggleArrangement;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/settings/ToggleArrangement;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_4
    if-nez p2, :cond_5

    .line 225
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 226
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030022

    invoke-virtual {v3, v4, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 227
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/settings/ToggleArrangement$ToggleAdapter;->this$0:Lcom/android/systemui/settings/ToggleArrangement;

    #getter for: Lcom/android/systemui/settings/ToggleArrangement;->mListView:Landroid/widget/SortableListView;
    invoke-static {v5}, Lcom/android/systemui/settings/ToggleArrangement;->access$500(Lcom/android/systemui/settings/ToggleArrangement;)Landroid/widget/SortableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SortableListView;->getListenerForStartingSort()Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 231
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_5
    const v4, 0x7f1000b8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/android/systemui/settings/ToggleManager;->getName(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/systemui/settings/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const v4, 0x7f100006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-static {v1, v2}, Lcom/android/systemui/settings/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    move-object v4, p2

    .line 237
    goto :goto_1
.end method
