using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;

public class ClickMove : MonoBehaviour
{
    [SerializeField]
    private NavMeshAgent navMeshAgent;
    [SerializeField]
    private Transform playerModel;
    [SerializeField]
    private Animator anim;
    [SerializeField]
    private bool _canMove = true;
    public bool canMove { get => _canMove; }

    private Transform thisTrans;
    // make sure the animation is facing left or right based on
    // which direction the player is going
    private Vector3 rightRotation = new Vector3(90, 0, 0);
    private Vector3 leftRotation = new Vector3(270, 0, 180);


    private void Awake()
    {
        navMeshAgent.updateRotation = false;
        thisTrans = transform;
    }

    void Update()
    {
        // move via mouse click
        if (canMove && Input.GetButtonDown("Fire1"))
        {
            MoveToMousePosition();
            anim.SetBool("isMoving", true);
        }

        // check if we stopped moving and should go to idle
        if (anim.GetBool("isMoving") && HasReachedDestination())
        {
            anim.SetBool("isMoving", false);
        }
    }

    private void MoveToMousePosition()
    {
        // If the pointer is over a UI element, don't move the player
        if (EventSystem.current.IsPointerOverGameObject())
        {
            return;
        }

        // Get the mouse position on the screen
        Vector3 mousePosition = Input.mousePosition;

        // Convert that position to a position in the world
        Vector3 targetPosition = Camera.main.ScreenToWorldPoint(mousePosition);

        navMeshAgent.destination = targetPosition;

        UpdatePlayerModelDirection(targetPosition);
    }

    // updates direction player model is facing based on whether
    // player is going left or right
    private void UpdatePlayerModelDirection(Vector3 targetPosition)
    {
        if (thisTrans.position.x < targetPosition.x)
        {
            playerModel.localEulerAngles = rightRotation;
        }
        else if (thisTrans.position.x > targetPosition.x)
        {
            playerModel.localEulerAngles = leftRotation;

        }
    }

    // check if we have reached our target destination on the navmesh
    private bool HasReachedDestination()
    {
        return !navMeshAgent.pathPending
            && navMeshAgent.remainingDistance <= navMeshAgent.stoppingDistance
            && (!navMeshAgent.hasPath || navMeshAgent.velocity.sqrMagnitude == 0f);
    }

    public void BTN_ToggleCanMove(bool status)
    {
        _canMove = status;
    }
}
