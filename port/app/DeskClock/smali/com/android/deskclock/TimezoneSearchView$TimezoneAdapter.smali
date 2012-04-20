.class Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimezoneSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimezoneSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSortByName:Z

.field private mTimezones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/TimezonePicker$TimezoneItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/deskclock/TimezoneSearchView;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/TimezoneSearchView;Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "sortByName"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->this$0:Lcom/android/deskclock/TimezoneSearchView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/deskclock/TimezonePicker;->getAllTimezones(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    .line 83
    iput-boolean p3, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mSortByName:Z

    .line 84
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;

    iget-boolean v2, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mSortByName:Z

    invoke-direct {v1, v2}, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    .line 111
    .local v0, item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mGmt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-object v1

    .line 108
    .end local v0           #item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public notifyTimezonesListOnQueryChange(Ljava/lang/String;)V
    .locals 6
    .parameter "query"

    .prologue
    .line 117
    iget-object v3, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/deskclock/TimezonePicker;->getAllTimezones(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    .local v0, allTimezones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/deskclock/TimezonePicker$TimezoneItem;>;"
    iget-object v3, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/TimezonePicker$TimezoneItem;

    .line 120
    .local v2, item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    iget-object v3, v2, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v2           #item:Lcom/android/deskclock/TimezonePicker$TimezoneItem;
    :cond_1
    iget-object v3, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mTimezones:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;

    iget-boolean v5, p0, Lcom/android/deskclock/TimezoneSearchView$TimezoneAdapter;->mSortByName:Z

    invoke-direct {v4, v5}, Lcom/android/deskclock/TimezonePicker$TimezoneComparator;-><init>(Z)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    return-void
.end method
