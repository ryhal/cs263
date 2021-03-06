package cs263w16.model;

/**
 * Created by ryanhalbrook on 3/12/16.
 */
public class Subscription {

    private String userId;
    private String communityId;
    private String eventId;

    public Subscription(String userId, String communityId, String eventId) {
        this.userId = userId;
        this.communityId = communityId;
        this.eventId = eventId;
    }

    public String getId() {
        return userId + ":" + eventId; }

    public String getUserId() {
        return userId;
    }

    public String getCommunityId() {
        return communityId;
    }

    public String getEventId() {
        return eventId;
    }
}
