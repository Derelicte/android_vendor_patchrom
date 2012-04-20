.class Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;
.super Ljava/lang/Object;
.source "NotificationIconFilterSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/NotificationIconFilterSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$1:Lcom/android/systemui/settings/NotificationIconFilterSettings$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/NotificationIconFilterSettings$3;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;->this$1:Lcom/android/systemui/settings/NotificationIconFilterSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 339
    check-cast p1, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;

    .end local p1
    check-cast p2, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/settings/NotificationIconFilterSettings$3$1;->compare(Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;)I

    move-result v0

    return v0
.end method
